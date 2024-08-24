part of 'exercise_bloc.dart';

@freezed
class ExerciseState with _$ExerciseState {
  const factory ExerciseState.initial() = ExerciseStateInitial;
  const factory ExerciseState.loading() = ExerciseStateLoading;
  const factory ExerciseState.loaded({
    required List<ExerciseModel> exercises,
    required List<ExerciseModel> filteredExercises,
  }) = ExerciseStateLoaded;
  const factory ExerciseState.failure(
    String message,
  ) = ExerciseStateFailure;

  // Actions
  const factory ExerciseState.createdBatch(
    List<ExerciseModel> exercises,
  ) = ExerciseStateCreatedBatch;
  const factory ExerciseState.updatedBatch(
    List<ExerciseModel> exercises,
  ) = ExerciseStateUpdatedBatch;
  const factory ExerciseState.deleted(
    ExerciseModel exercise,
  ) = ExerciseStateDeleted;
}
