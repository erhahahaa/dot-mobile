part of 'coach_exercise_bloc.dart';

@freezed
class CoachExerciseEvent with _$CoachExerciseEvent {
  const factory CoachExerciseEvent.getExercises(
    GetAllExerciseParams params,
  ) = _GetExercises;
  const factory CoachExerciseEvent.filterExercises(
    String query,
  ) = _FilterExercises;
  const factory CoachExerciseEvent.clear() = _Clear;

  // Actions
  const factory CoachExerciseEvent.createBatch(
    List<CreateExerciseParams> params,
  ) = _CreateBatch;
  const factory CoachExerciseEvent.update(
    List<UpdateExerciseParams> params,
  ) = _UpdateBatch;
  const factory CoachExerciseEvent.delete(
    DeleteExerciseParams params,
  ) = _Delete;
}
