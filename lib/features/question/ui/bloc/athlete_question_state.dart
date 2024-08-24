part of 'athlete_question_bloc.dart';

@freezed
class AthleteQuestionState with _$AthleteQuestionState {
  const factory AthleteQuestionState.initial() = AthleteQuestionStateInitial;
  const factory AthleteQuestionState.loading() = AthleteQuestionStateLoading;
  const factory AthleteQuestionState.loaded({
    required List<QuestionModel> questions,
    required List<QuestionModel> filteredQuestions,
  }) = AthleteQuestionStateLoaded;
  const factory AthleteQuestionState.failure(
    String message,
  ) = AthleteQuestionStateFailure;
}
