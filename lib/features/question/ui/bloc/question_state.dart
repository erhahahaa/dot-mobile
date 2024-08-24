part of 'question_bloc.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState.initial() = QuestionStateInitial;
  const factory QuestionState.loading() = QuestionStateLoading;
  const factory QuestionState.loaded({
    required List<QuestionModel> questions,
    required List<QuestionModel> filteredQuestions,
  }) = QuestionStateLoaded;
  const factory QuestionState.failure(
    String message,
  ) = QuestionStateFailure;

  // Actions
  const factory QuestionState.createdBatch(
    List<QuestionModel> question,
  ) = QuestionStateCreatedBatch;
  const factory QuestionState.updatedBatch(
    List<QuestionModel> question,
  ) = QuestionStateUpdatedBatch;
  const factory QuestionState.deleted(
    QuestionModel question,
  ) = QuestionStateDeleted;
}
