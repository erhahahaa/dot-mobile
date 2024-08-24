part of 'coach_evaluation_bloc.dart';

@freezed
class CoachEvaluationState with _$CoachEvaluationState {
  const factory CoachEvaluationState.initial() = CoachEvaluationStateInitial;
  const factory CoachEvaluationState.loading() = CoachEvaluationStateLoading;
  const factory CoachEvaluationState.loaded({
    required List<EvaluationModel> evaluations,
    required List<EvaluationModel> filteredEvaluations,
  }) = CoachEvaluationStateLoaded;
  const factory CoachEvaluationState.failure(String message) =
      CoachEvaluationStateFailure;

  // Actions
  const factory CoachEvaluationState.created(
    EvaluationModel evaluation,
  ) = CoachEvaluationStateCreated;
  const factory CoachEvaluationState.updated(
    EvaluationModel evaluation,
  ) = CoachEvaluationStateUpdated;
  const factory CoachEvaluationState.deleted(
    EvaluationModel evaluation,
  ) = CoachEvaluationStateDeleted;
}
