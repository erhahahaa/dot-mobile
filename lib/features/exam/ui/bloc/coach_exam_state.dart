part of 'coach_exam_bloc.dart';

@freezed
class CoachExamState with _$CoachExamState {
  const factory CoachExamState.initial() = _Initial;
  const factory CoachExamState.loading() = _Loading;
  const factory CoachExamState.loaded(
    CoachExamLoadedEvent data,
  ) = _Loaded;
  const factory CoachExamState.failure(String message) = _Failure;

  // Actions
  const factory CoachExamState.created(ExamModel exam) = _Created;
  const factory CoachExamState.updated(ExamModel exam) = _Updated;
  const factory CoachExamState.deleted(ExamModel exam) = _Deleted;
}

@freezed
class CoachExamLoadedEvent with _$CoachExamLoadedEvent {
  const factory CoachExamLoadedEvent({
    @Default([]) List<ExamModel> exams,
    @Default([]) List<ExamModel> filteredExams,
  }) = _CoachExamLoadedEvent;
}
