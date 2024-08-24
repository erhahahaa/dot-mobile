part of 'athlete_evaluation_bloc.dart';

@freezed
class AthleteEvaluationState with _$AthleteEvaluationState {
  const factory AthleteEvaluationState.initial() =
      AthleteEvaluationStateInitial;
  const factory AthleteEvaluationState.loading() =
      AthleteEvaluationStateLoading;
  const factory AthleteEvaluationState.loaded({
    required List<EvaluationModel> evaluations,
    required List<EvaluationModel> filteredEvaluations,
  }) = AthleteEvaluationStateLoaded;
  const factory AthleteEvaluationState.failure(
    String message,
  ) = AthleteEvaluationStateFailure;
}
