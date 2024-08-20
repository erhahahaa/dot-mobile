part of 'coach_exercise_bloc.dart';

@freezed
class CoachExerciseState with _$CoachExerciseState {
  const factory CoachExerciseState.initial() = _Initial;
  const factory CoachExerciseState.loading() = _Loading;
  const factory CoachExerciseState.loaded(
    CoachExerciseLoadedEvent data,
  ) = _Loaded;
  const factory CoachExerciseState.failure(String message) = _Failure;

  // Actions
  const factory CoachExerciseState.createdBatch(
    List<ExerciseModel> exercises,
  ) = _CreatedBatch;
  const factory CoachExerciseState.updatedBatch(
    List<ExerciseModel> exercises,
  ) = _UpdatedBatch;
  const factory CoachExerciseState.deleted(
    ExerciseModel exercise,
  ) = _Deleted;
}

@freezed
class CoachExerciseLoadedEvent with _$CoachExerciseLoadedEvent {
  const factory CoachExerciseLoadedEvent({
    @Default([]) List<ExerciseModel> exercises,
    @Default([]) List<ExerciseModel> filteredExercises,
  }) = _CoachExerciseLoadedEvent;
}
