part of 'coach_question_bloc.dart';

@freezed
class CoachQuestionEvent with _$CoachQuestionEvent {
  const factory CoachQuestionEvent.getQuestions(
    GetAllQuestionParams params,
  ) = _GetQuestions;
  const factory CoachQuestionEvent.filterQuestions(
    String query,
  ) = _FilterQuestions;
  const factory CoachQuestionEvent.clear() = _Clear;

  // Actions
  const factory CoachQuestionEvent.createBatch(
    List<CreateQuestionParams> params,
  ) = _CreateBatch;
  const factory CoachQuestionEvent.updateBatch(
    List<UpdateQuestionParams> params,
  ) = _UpdateBatch;
  const factory CoachQuestionEvent.delete(
    DeleteQuestionParams params,
  ) = _Delete;
}
