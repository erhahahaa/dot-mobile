part of 'athlete_question_bloc.dart';

@freezed
class AthleteQuestionState with _$AthleteQuestionState {
  const factory AthleteQuestionState.initial() = _Initial;
  const factory AthleteQuestionState.loading() = _Loading;
  const factory AthleteQuestionState.loaded(
    AthleteQuestionLoadedEvent data,
  ) = _Loaded;
  const factory AthleteQuestionState.failure(String message) = _Failure;
}

@freezed
class AthleteQuestionLoadedEvent with _$AthleteQuestionLoadedEvent {
  const factory AthleteQuestionLoadedEvent({
    @Default([]) List<QuestionModel> questions,
    @Default([]) List<QuestionModel> filteredQuestions,
  }) = _AthleteQuestionLoadedEvent;
}
