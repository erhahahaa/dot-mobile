part of 'question_bloc.dart';

@freezed
class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.getQuestions(
    GetAllQuestionParams params,
  ) = QuestionEventGetQuestions;
  const factory QuestionEvent.filterQuestions(
    String query,
  ) = QuestionEventFilterQuestions;
  const factory QuestionEvent.clear() = QuestionEventClear;

  // Actions
  const factory QuestionEvent.createBatch(
    List<CreateQuestionParams> params,
  ) = QuestionEventCreateBatch;
  const factory QuestionEvent.updateBatch(
    List<UpdateQuestionParams> params,
  ) = QuestionEventUpdateBatch;
  const factory QuestionEvent.delete(
    DeleteQuestionParams params,
  ) = QuestionEventDelete;
}
