import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_cubit.freezed.dart';
part 'program_state.dart';

class ProgramCubit extends Cubit<ProgramState> {
  final ProgramRepo _programRepo;
  final UserRepo _userRepo;

  ProgramCubit(
    this._programRepo,
    this._userRepo,
  ) : super(const ProgramState());

  Future<void> init({int? clubId}) async {
    final u = await fetchLocalUser();
    if (u != null && clubId != null) {
      u.role == UserRole.coach
          ? await coachInit(clubId)
          : await athleteInit(clubId);
    }
  }

  Future<UserEntity?> fetchLocalUser() async {
    final res = await _userRepo.getMe();
    return res.fold(
      (l) => null,
      (r) => r,
    );
  }

  Future<void> coachInit(int clubId) async {
    await fetchCoachPrograms(clubId);
  }

  Future<void> athleteInit(int clubId) async {}

  Future<void> fetchCoachPrograms(int clubId) async {
    final res = await _programRepo.getAll(
      const PaginationParams(),
      clubId,
    );

    res.fold(
      (l) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.failure,
            failure: l,
          ),
        );
      },
      (r) {
        safeEmit(
          isClosed: isClosed,
          emit: emit,
          state: state.copyWith(
            state: BaseState.success,
            programs: r,
          ),
        );
      },
    );
  }
}
