import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_cubit.freezed.dart';
part 'club_state.dart';

class ClubCubit extends Cubit<ClubState> {
  final ClubRepo _clubRepo;
  final UserRepo _userRepo;

  ClubCubit(
    this._clubRepo,
    this._userRepo,
  ) : super(const ClubState());

  Future<void> init() async {
    final u = await fetchLocalUser();
    if (u != null) {
      await fetchClubs();
    }
  }

  Future<UserModel?> fetchLocalUser() async {
    final res = await _userRepo.getMe();
    return res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.failure,
            failure: l,
          ),
        );
        return null;
      },
      (r) {
        final u = UserModel.fromEntity(r);
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            user: u,
          ),
        );
        return u;
      },
    );
  }

  Future<void> fetchClubs() async {
    final res = await _clubRepo.getAll(
      const PaginationParams(),
      state.user.role == UserRole.coach ? state.user.id : null,
    );

    res.fold(
      (l) => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      ),
      (r) {
        if (state.user.role == UserRole.coach) {
          safeEmit(
            isClosed: isClosed,
            emit: emit,
            state: state.copyWith(
              state: BaseState.success,
              coachClubs: r,
            ),
          );
        } else {
          safeEmit(
            isClosed: isClosed,
            emit: emit,
            state: state.copyWith(
              state: BaseState.success,
              athleteClubs: r,
            ),
          );
        }
      },
    );
  }

  Future<void> create(CreateClubParams createClubParams) async {
    final res = await _clubRepo.create(createClubParams);

    res.fold(
      (l) => safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      ),
      (r) {
        final coachClub = List<ClubModel>.from(state.coachClubs);
        coachClub.add(r);

        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            coachClubs: coachClub,
          ),
        );
      },
    );
  }
}
