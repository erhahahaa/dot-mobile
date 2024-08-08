part of 'evaluation_cubit.dart';

@freezed
class EvaluationState with _$EvaluationState {
  const factory EvaluationState({
    @Default(BaseState.initial) BaseState state,
    Failure? failure,
    @Default([]) List<EvaluationModel> evaluations,
    @Default([]) List<EvaluationModel> filteredEvaluations,
  }) = _EvaluationState;
}
