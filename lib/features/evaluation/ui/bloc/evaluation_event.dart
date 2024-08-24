part of 'evaluation_bloc.dart';

@freezed
class EvaluationEvent with _$EvaluationEvent {
  const factory EvaluationEvent.clear() = EvaluationEventClear;
  const factory EvaluationEvent.getEvaluations(
    GetAllEvaluationParams params,
  ) = EvaluationEventGetEvaluations;
  const factory EvaluationEvent.selectEvaluation(
    EvaluationModel? evaluation,
  ) = EvaluationEventSelectEvaluation;
  const factory EvaluationEvent.filterEvaluations(
    String query,
  ) = EvaluationEventFilterEvaluations;

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
