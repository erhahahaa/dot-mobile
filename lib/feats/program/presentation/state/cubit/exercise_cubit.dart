import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_cubit.freezed.dart';
part 'exercise_state.dart';

class ExerciseCubit extends Cubit<ExerciseState> {
  final ExerciseRepo _exerciseRepo;
  ExerciseCubit(
    this._exerciseRepo,
  ) : super(ExerciseState());

  Future<void> init() async {}

  Future<void> create(List<CreateProgramExerciseParams> params) async {
    final res = await _exerciseRepo.create(params);
    res.fold((l) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.failure,
          failure: l,
        ),
      );
    }, (r) {
      safeEmit(
        isClosed: isClosed,
        emit: emit,
        state: state.copyWith(
          state: BaseState.success,
        ),
      );
    });
  }
}
