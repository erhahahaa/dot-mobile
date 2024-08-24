part of 'coach_exercise_bloc.dart';

@freezed
class CoachExerciseState with _$CoachExerciseState {
  const factory CoachExerciseState.initial() = CoachExerciseStateInitial;
  const factory CoachExerciseState.loading() = CoachExerciseStateLoading;
  const factory CoachExerciseState.loaded({
    required List<ExerciseModel> exercises,
    required List<ExerciseModel> filteredExercises,
  }) = CoachExerciseStateLoaded;
  const factory CoachExerciseState.failure(String message) =
      CoachExerciseStateFailure;

  // Actions
  const factory CoachExerciseState.createdBatch(
    List<ExerciseModel> exercises,
  ) = CoachExerciseStateCreatedBatch;
  const factory CoachExerciseState.updatedBatch(
    List<ExerciseModel> exercises,
  ) = CoachExerciseStateUpdatedBatch;
  const factory CoachExerciseState.deleted(
    ExerciseModel exercise,
  ) = CoachExerciseStateDeleted;
}
