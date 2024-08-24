part of 'coach_exam_bloc.dart';

@freezed
class CoachExamState with _$CoachExamState {
  const factory CoachExamState.initial() = _Initial;
  const factory CoachExamState.loading() = _Loading;
  const factory CoachExamState.loaded({
    required List<ExamModel> exams,
    required List<ExamModel> filteredExams,
  }) = _Loaded;
  const factory CoachExamState.failure(String message) = _Failure;

  // Actions
  const factory CoachExamState.created(ExamModel exam) = _Created;
  const factory CoachExamState.updated(ExamModel exam) = _Updated;
  const factory CoachExamState.deleted(ExamModel exam) = _Deleted;
}
