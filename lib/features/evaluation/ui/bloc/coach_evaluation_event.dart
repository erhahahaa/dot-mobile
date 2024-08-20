part of 'coach_evaluation_bloc.dart';

@freezed
class CoachEvaluationEvent with _$CoachEvaluationEvent {
  const factory CoachEvaluationEvent.getEvaluations(
    GetAllEvaluationParams params,
  ) = _GetEvaluations;
  const factory CoachEvaluationEvent.filterEvaluations(
    String query,
  ) = _FilterEvaluations;
  const factory CoachEvaluationEvent.clear() = _Clear;

  // Actions
  const factory CoachEvaluationEvent.create(
    CreateEvaluationParams params,
  ) = _Create;
  const factory CoachEvaluationEvent.update(
    UpdateEvaluationParams params,
  ) = _Update;
  const factory CoachEvaluationEvent.delete(
    DeleteEvaluationParams params,
  ) = _Delete;
}
