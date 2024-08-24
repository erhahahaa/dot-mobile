part of 'athlete_question_bloc.dart';

@freezed
class AthleteQuestionEvent with _$AthleteQuestionEvent {
  const factory AthleteQuestionEvent.clear() = AthleteQuestionEventClear;
  const factory AthleteQuestionEvent.getQuestions(
    GetAllQuestionParams params,
  ) = AthleteQuestionEventGetQuestions;
  const factory AthleteQuestionEvent.filterQuestions(
    String query,
  ) = AthleteQuestionEventFilterQuestions;
}
