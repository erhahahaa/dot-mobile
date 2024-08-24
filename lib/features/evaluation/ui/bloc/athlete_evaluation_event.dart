part of 'athlete_evaluation_bloc.dart';

@freezed
class AthleteEvaluationEvent with _$AthleteEvaluationEvent {
  const factory AthleteEvaluationEvent.clear() = AthleteEvaluationEventClear;
  const factory AthleteEvaluationEvent.getEvaluations(
    GetAllEvaluationParams params,
  ) = AthleteEvaluationEventGetEvaluations;
  const factory AthleteEvaluationEvent.selectEvaluation(
    EvaluationModel? evaluation,
  ) = AthleteEvaluationEventSelectEvaluation;
  const factory AthleteEvaluationEvent.filterEvaluations(
    String query,
  ) = AthleteEvaluationEventFilterEvaluations;
}
