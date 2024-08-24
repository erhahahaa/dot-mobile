part of 'exam_bloc.dart';

@freezed
class ExamEvent with _$ExamEvent {
  const factory ExamEvent.clear() = ExamEventClear;
  const factory ExamEvent.getExams(
    GetAllExamParams params,
  ) = ExamEventGetExams;
  const factory ExamEvent.filterExams(
    String query,
  ) = ExamEventFilterExams;

  // Actions
  const factory ExamEvent.create(
    CreateExamParams params,
  ) = ExamEventCreate;
  const factory ExamEvent.update(
    UpdateExamParams params,
  ) = ExamEventUpdate;
  const factory ExamEvent.delete(
    DeleteExamParams params,
  ) = ExamEventDelete;
}
