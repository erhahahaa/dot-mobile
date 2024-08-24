part of 'coach_exercise_bloc.dart';

@freezed
class CoachExerciseEvent with _$CoachExerciseEvent {
  const factory CoachExerciseEvent.getExercises(
    GetAllExerciseParams params,
  ) = CoachExerciseEventGetExercises;
  const factory CoachExerciseEvent.filterExercises(
    String query,
  ) = CoachExerciseEventFilterExercises;
  const factory CoachExerciseEvent.clear() = CoachExerciseEventClear;

  // Actions
  const factory CoachExerciseEvent.createBatch(
    List<CreateExerciseParams> params,
  ) = CoachExerciseEventCreateBatch;
  const factory CoachExerciseEvent.update(
    List<UpdateExerciseParams> params,
  ) = CoachExerciseEventUpdateBatch;
  const factory CoachExerciseEvent.delete(
    DeleteExerciseParams params,
  ) = CoachExerciseEventDelete;
}
