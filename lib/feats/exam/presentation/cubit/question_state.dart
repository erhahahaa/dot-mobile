part of 'question_cubit.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState({
    @Default(BaseState.initial) BaseState state,
    Failure? failure,
  }) = _QuestionState;
}
