part of 'athlete_exam_bloc.dart';

@freezed
class AthleteExamState with _$AthleteExamState {
  const factory AthleteExamState.initial() = AthleteExamStateInitial;
  const factory AthleteExamState.loading() = AthleteExamStateLoading;
  const factory AthleteExamState.loaded({
    required List<ExamModel> exams,
    required List<ExamModel> filteredExams,
  }) = AthleteExamStateLoaded;
  const factory AthleteExamState.failure(
    String message,
  ) = AthleteExamStateFailure;
}
