part of 'exercise_cubit.dart';

@freezed
class ExerciseState with _$ExerciseState {
  const factory ExerciseState({
    @Default(BaseState.initial) BaseState state,
    Failure? failure,
    @Default([]) List<ProgramExerciseModel> exercises,
    @Default([]) List<MediaModel> medias,
  }) = _ExerciseState;
}
