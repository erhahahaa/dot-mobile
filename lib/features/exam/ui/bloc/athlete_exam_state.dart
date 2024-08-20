part of 'athlete_exam_bloc.dart';

@freezed
class AthleteExamState with _$AthleteExamState {
  const factory AthleteExamState.initial() = _Initial;
  const factory AthleteExamState.loading() = _Loading;
  const factory AthleteExamState.loaded(
    AthleteExamLoadedEvent data,
  ) = _Loaded;
  const factory AthleteExamState.failure(String message) = _Failure;
}

@freezed
class AthleteExamLoadedEvent with _$AthleteExamLoadedEvent {
  const factory AthleteExamLoadedEvent({
    @Default([]) List<ExamModel> exams,
    @Default([]) List<ExamModel> filteredExams,
  }) = _AthleteExamLoadedEvent;
}
