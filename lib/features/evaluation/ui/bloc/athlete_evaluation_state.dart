part of 'athlete_evaluation_bloc.dart';

@freezed
class AthleteEvaluationState with _$AthleteEvaluationState {
  const factory AthleteEvaluationState.initial() = _Initial;
  const factory AthleteEvaluationState.loading() = _Loading;
  const factory AthleteEvaluationState.loaded(
    AthleteEvaluationLoadedEvent data,
  ) = _Loaded;
  const factory AthleteEvaluationState.failure(String message) = _Failure;
}

@freezed
class AthleteEvaluationLoadedEvent with _$AthleteEvaluationLoadedEvent {
  const factory AthleteEvaluationLoadedEvent({
    @Default([]) List<EvaluationModel> evaluations,
    @Default([]) List<EvaluationModel> filteredEvaluations,
  }) = _AthleteEvaluationLoadedEvent;
}
