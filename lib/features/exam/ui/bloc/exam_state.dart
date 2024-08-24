part of 'exam_bloc.dart';

@freezed
class ExamState with _$ExamState {
  const factory ExamState.initial() = ExamStateInitial;
  const factory ExamState.loading() = ExamStateLoading;
  const factory ExamState.success({
    required List<ExamModel> exams,
    required List<ExamModel> filteredExams,
  }) = ExamStateSuccess;
  const factory ExamState.failure(
    String message,
  ) = ExamStateFailure;
  // Actions
  const factory ExamState.created(
    ExamModel exam,
  ) = ExamStateCreated;
  const factory ExamState.updated(
    ExamModel exam,
  ) = ExamStateUpdated;
  const factory ExamState.deleted(
    ExamModel exam,
  ) = ExamStateDeleted;
}
