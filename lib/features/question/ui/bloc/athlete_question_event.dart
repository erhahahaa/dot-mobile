part of 'athlete_question_bloc.dart';

@freezed
class AthleteQuestionEvent with _$AthleteQuestionEvent {
  const factory AthleteQuestionEvent.clear() = _Clear;
  const factory AthleteQuestionEvent.getQuestions(
    GetAllQuestionParams params,
  ) = _GetQuestions;
  const factory AthleteQuestionEvent.filterQuestions(
    String query,
  ) = _FilterQuestions;
}
