part of 'evaluation_bloc.dart';

@freezed
class EvaluationState with _$EvaluationState {
  const factory EvaluationState.initial() = EvaluationStateInitial;
  const factory EvaluationState.loading() = EvaluationStateLoading;
  const factory EvaluationState.success({
    required List<EvaluationModel> evaluations,
    required List<EvaluationModel> filteredEvaluations,
    EvaluationModel? selectedEvaluation,
  }) = EvaluationStateSuccess;
  const factory EvaluationState.failure(
    String message,
  ) = EvaluationStateFailure;

  // Actions
  const factory EvaluationState.created(
    EvaluationModel evaluation,
  ) = EvaluationStateCreated;
  const factory EvaluationState.updated(
    EvaluationModel evaluation,
  ) = EvaluationStateUpdated;
  const factory EvaluationState.deleted(
    EvaluationModel evaluation,
  ) = EvaluationStateDeleted;
}
