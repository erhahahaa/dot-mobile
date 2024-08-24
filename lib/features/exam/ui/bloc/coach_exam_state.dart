part of 'coach_exam_bloc.dart';

@freezed
class CoachExamState with _$CoachExamState {
  const factory CoachExamState.initial() = CoachExamStateInitial;
  const factory CoachExamState.loading() = CoachExamStateLoading;
  const factory CoachExamState.loaded({
    required List<ExamModel> exams,
    required List<ExamModel> filteredExams,
  }) = CoachExamStateLoaded;
  const factory CoachExamState.failure(String message) = CoachExamStateFailure;

  // Actions
  const factory CoachExamState.created(
    ExamModel exam,
  ) = CoachExamStateCreated;
  const factory CoachExamState.updated(
    ExamModel exam,
  ) = CoachExamStateUpdated;
  const factory CoachExamState.deleted(
    ExamModel exam,
  ) = CoachExamStateDeleted;
}
