part of 'athlete_exam_bloc.dart';

@freezed
class AthleteExamState with _$AthleteExamState {
  const factory AthleteExamState.initial() = _Initial;
  const factory AthleteExamState.loading() = _Loading;
  const factory AthleteExamState.loaded({
    required List<ExamModel> exams,
    required List<ExamModel> filteredExams,
  }) = _Loaded;
  const factory AthleteExamState.failure(String message) = _Failure;
}
