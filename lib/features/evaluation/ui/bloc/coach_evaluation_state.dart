part of 'coach_evaluation_bloc.dart';

@freezed
class CoachEvaluationState with _$CoachEvaluationState {
  const factory CoachEvaluationState.initial() = _Initial;
  const factory CoachEvaluationState.loading() = _Loading;
  const factory CoachEvaluationState.loaded(
    CoachEvaluationLoadedEvent data,
  ) = _Loaded;
  const factory CoachEvaluationState.failure(String message) = _Failure;

  // Actions
  const factory CoachEvaluationState.created(EvaluationModel evaluation) =
      _Created;
  const factory CoachEvaluationState.updated(EvaluationModel evaluation) =
      _Updated;
  const factory CoachEvaluationState.deleted(EvaluationModel evaluation) =
      _Deleted;
}

@freezed
class CoachEvaluationLoadedEvent with _$CoachEvaluationLoadedEvent {
  const factory CoachEvaluationLoadedEvent({
    @Default([]) List<EvaluationModel> evaluations,
    @Default([]) List<EvaluationModel> filteredEvaluations,
  }) = _CoachEvaluationLoadedEvent;
}
