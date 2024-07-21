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
      u.role == UserRole.coach ? await coachInit(u) : await athleteInit();
    }
  }

  Future<UserEntity?> fetchLocalUser() async {
    final res = await _userRepo.getMe();
    return res.fold(
      (l) => null,
      (r) => r,
    );
  }

  Future<void> coachInit(UserEntity user) async {
    await fetchCoachClubs(user);
  }

  Future<void> athleteInit() async {}

  Future<void> fetchCoachClubs(UserEntity user) async {
    final res = await _clubRepo.getAll(
      const PaginationParams(),
      user.id,
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
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            coachClubs: r,
          ),
        );
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
