part of 'athlete_exam_bloc.dart';

@freezed
class AthleteExamEvent with _$AthleteExamEvent {
  const factory AthleteExamEvent.clear() = AthleteExamEventClear;
  const factory AthleteExamEvent.getExams(
    GetAllExamParams params,
  ) = AthleteExamEventGetExams;
  const factory AthleteExamEvent.filterExams(
    String query,
  ) = AthleteExamEventFilterExams;
}
