part of 'athlete_evaluation_bloc.dart';

@freezed
class AthleteEvaluationEvent with _$AthleteEvaluationEvent {
  const factory AthleteEvaluationEvent.clear() = _Clear;
  const factory AthleteEvaluationEvent.getEvaluations(
    GetAllEvaluationParams params,
  ) = _GetEvaluations;
  const factory AthleteEvaluationEvent.filterEvaluations(
    String query,
  ) = _FilterEvaluations;
}
