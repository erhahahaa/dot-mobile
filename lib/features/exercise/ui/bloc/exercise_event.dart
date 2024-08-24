part of 'exercise_bloc.dart';

@freezed
class ExerciseEvent with _$ExerciseEvent {
  const factory ExerciseEvent.clear() = ExerciseEventClear;
  const factory ExerciseEvent.getExercises(
    GetAllExerciseParams params,
  ) = ExerciseEventGetExercises;
  const factory ExerciseEvent.filterExercises(
    String query,
  ) = ExerciseEventFilterExercises;

  // Actions
  const factory ExerciseEvent.createBatch(
    List<CreateExerciseParams> params,
  ) = ExerciseEventCreateBatch;
  const factory ExerciseEvent.update(
    List<UpdateExerciseParams> params,
  ) = ExerciseEventUpdateBatch;
  const factory ExerciseEvent.delete(
    DeleteExerciseParams params,
  ) = ExerciseEventDelete;
}
