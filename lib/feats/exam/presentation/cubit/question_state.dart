part of 'question_cubit.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState({
    @Default(BaseState.initial) BaseState state,
    Failure? failure,
    @Default([]) List<QuestionModel> questions,
    @Default([]) List<MediaModel> medias,
  }) = _QuestionState;
}
