part of 'coach_exam_bloc.dart';

@freezed
class CoachExamEvent with _$CoachExamEvent {
  const factory CoachExamEvent.getExams(
    GetAllExamParams params,
  ) = _GetExams;
  const factory CoachExamEvent.filterExams(
    String query,
  ) = _FilterExams;
  const factory CoachExamEvent.clear() = _Clear;

  // Actions
  const factory CoachExamEvent.create(CreateExamParams params) = _Create;
  const factory CoachExamEvent.update(UpdateExamParams params) = _Update;
  const factory CoachExamEvent.delete(DeleteExamParams params) = _Delete;
}
