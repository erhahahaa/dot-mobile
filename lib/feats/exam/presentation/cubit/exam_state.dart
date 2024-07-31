part of 'exam_cubit.dart';

@freezed
class ExamState with _$ExamState {
  const factory ExamState({
    @Default(BaseState.initial) BaseState state,
    Failure? failure,
    @Default([]) List<ExamModel> exams,
    @Default([]) List<ExamModel> filteredExams,
    ExamModel? createdExam,
    File? image,
  }) = _ExamState;
}
