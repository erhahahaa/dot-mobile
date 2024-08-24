part of 'evaluation_bloc.dart';

@freezed
class EvaluationEvent with _$EvaluationEvent {
  const factory EvaluationEvent.getEvaluations(
    GetAllEvaluationParams params,
  ) = EvaluationEventGetEvaluations;
  const factory EvaluationEvent.filterEvaluations(
    String query,
  ) = EvaluationEventFilterEvaluations;
  const factory EvaluationEvent.clear() = EvaluationEventClear;

  // Actions
  const factory EvaluationEvent.create(
    CreateEvaluationParams params,
  ) = EvaluationEventCreate;
  const factory EvaluationEvent.update(
    UpdateEvaluationParams params,
  ) = EvaluationEventUpdate;
  const factory EvaluationEvent.delete(
    DeleteEvaluationParams params,
  ) = EvaluationEventDelete;
}
