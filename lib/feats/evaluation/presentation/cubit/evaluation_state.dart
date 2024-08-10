part of 'evaluation_cubit.dart';

@freezed
class EvaluationState with _$EvaluationState {
  const factory EvaluationState({
    @Default(BaseState.initial) BaseState state,
    Failure? failure,
    @Default([]) List<EvaluationModel> evaluations,
    @Default([]) List<EvaluationModel> filteredEvaluations,
    @Default([]) List<QuestionModelWithController> questions,
    @Default(UserModel()) UserModel coach,
  }) = _EvaluationState;
}

class QuestionModelWithController {
  final QuestionModel question;
  final TextEditingController controller;
  final FocusNode focusNode;

  QuestionModelWithController({
    required this.question,
    required this.controller,
    required this.focusNode,
  });
}
