part of 'coach_exam_bloc.dart';

@freezed
class CoachExamEvent with _$CoachExamEvent {
  const factory CoachExamEvent.getExams(
    GetAllExamParams params,
  ) = CoachExamEventGetExams;
  const factory CoachExamEvent.filterExams(
    String query,
  ) = CoachExamEventFilterExams;
  const factory CoachExamEvent.clear() = CoachExamEventClear;

  // Actions
  const factory CoachExamEvent.create(
    CreateExamParams params,
  ) = CoachExamEventCreate;
  const factory CoachExamEvent.update(
    UpdateExamParams params,
  ) = CoachExamEventUpdate;
  const factory CoachExamEvent.delete(
    DeleteExamParams params,
  ) = CoachExamEventDelete;
}
