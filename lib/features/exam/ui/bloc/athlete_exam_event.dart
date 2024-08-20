part of 'athlete_exam_bloc.dart';

@freezed
class AthleteExamEvent with _$AthleteExamEvent {
  const factory AthleteExamEvent.clear() = _Clear;
  const factory AthleteExamEvent.getExams(
    GetAllExamParams params,
  ) = _GetExams;
  const factory AthleteExamEvent.filterExams(
    String query,
  ) = _FilterExams;
}
