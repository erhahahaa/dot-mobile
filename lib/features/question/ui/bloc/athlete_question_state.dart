part of 'athlete_question_bloc.dart';

@freezed
class AthleteQuestionState with _$AthleteQuestionState {
  const factory AthleteQuestionState.initial() = _Initial;
  const factory AthleteQuestionState.loading() = _Loading;
  const factory AthleteQuestionState.loaded({
    required List<QuestionModel> questions,
    required List<QuestionModel> filteredQuestions,
  }) = _Loaded;
  const factory AthleteQuestionState.failure(String message) = _Failure;
}
