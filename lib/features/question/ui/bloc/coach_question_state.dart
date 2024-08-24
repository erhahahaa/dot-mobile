part of 'coach_question_bloc.dart';

@freezed
class CoachQuestionState with _$CoachQuestionState {
  const factory CoachQuestionState.initial() = CoachQuestionStateInitial;
  const factory CoachQuestionState.loading() = CoachQuestionStateLoading;
  const factory CoachQuestionState.loaded({
    required List<QuestionModel> questions,
    required List<QuestionModel> filteredQuestions,
  }) = CoachQuestionStateLoaded;
  const factory CoachQuestionState.failure(
    String message,
  ) = CoachQuestionStateFailure;

  // Actions
  const factory CoachQuestionState.createdBatch(
    List<QuestionModel> question,
  ) = CoachQuestionStateCreatedBatch;
  const factory CoachQuestionState.updatedBatch(
    List<QuestionModel> question,
  ) = CoachQuestionStateUpdatedBatch;
  const factory CoachQuestionState.deleted(
    QuestionModel question,
  ) = CoachQuestionStateDeleted;
}
