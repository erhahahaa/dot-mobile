part of 'coach_question_bloc.dart';

@freezed
class CoachQuestionState with _$CoachQuestionState {
  const factory CoachQuestionState.initial() = _Initial;
  const factory CoachQuestionState.loading() = _Loading;
  const factory CoachQuestionState.loaded({
    required List<QuestionModel> questions,
    required List<QuestionModel> filteredQuestions,
  }) = _Loaded;
  const factory CoachQuestionState.failure(String message) = _Failure;

  // Actions
  const factory CoachQuestionState.createdBatch(
    List<QuestionModel> question,
  ) = _CreatedBatch;
  const factory CoachQuestionState.updatedBatch(
    List<QuestionModel> question,
  ) = _UpdatedBatch;
  const factory CoachQuestionState.deleted(
    QuestionModel question,
  ) = _Deleted;
}
