part of 'coach_evaluation_bloc.dart';

@freezed
class CoachEvaluationEvent with _$CoachEvaluationEvent {
  const factory CoachEvaluationEvent.getEvaluations(
    GetAllEvaluationParams params,
  ) = CoachEvaluationEventGetEvaluations;
  const factory CoachEvaluationEvent.filterEvaluations(
    String query,
  ) = CoachEvaluationEventFilterEvaluations;
  const factory CoachEvaluationEvent.clear() = CoachEvaluationEventClear;

  // Actions
  const factory CoachEvaluationEvent.create(
    CreateEvaluationParams params,
  ) = CoachEvaluationEventCreate;
  const factory CoachEvaluationEvent.update(
    UpdateEvaluationParams params,
  ) = CoachEvaluationEventUpdate;
  const factory CoachEvaluationEvent.delete(
    DeleteEvaluationParams params,
  ) = CoachEvaluationEventDelete;
}
