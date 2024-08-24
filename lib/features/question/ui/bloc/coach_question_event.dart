part of 'coach_question_bloc.dart';

@freezed
class CoachQuestionEvent with _$CoachQuestionEvent {
  const factory CoachQuestionEvent.getQuestions(
    GetAllQuestionParams params,
  ) = CoachQuestionEventGetQuestions;
  const factory CoachQuestionEvent.filterQuestions(
    String query,
  ) = CoachQuestionEventFilterQuestions;
  const factory CoachQuestionEvent.clear() = CoachQuestionEventClear;

  // Actions
  const factory CoachQuestionEvent.createBatch(
    List<CreateQuestionParams> params,
  ) = CoachQuestionEventCreateBatch;
  const factory CoachQuestionEvent.updateBatch(
    List<UpdateQuestionParams> params,
  ) = CoachQuestionEventUpdateBatch;
  const factory CoachQuestionEvent.delete(
    DeleteQuestionParams params,
  ) = CoachQuestionEventDelete;
}
