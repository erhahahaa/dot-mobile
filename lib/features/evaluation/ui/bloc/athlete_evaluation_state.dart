part of 'athlete_evaluation_bloc.dart';

@freezed
class AthleteEvaluationState with _$AthleteEvaluationState {
  const factory AthleteEvaluationState.initial() = _Initial;
  const factory AthleteEvaluationState.loading() = _Loading;
  const factory AthleteEvaluationState.loaded({
    required List<EvaluationModel> evaluations,
    required List<EvaluationModel> filteredEvaluations,
  }) = _Loaded;
  const factory AthleteEvaluationState.failure(String message) = _Failure;
}
