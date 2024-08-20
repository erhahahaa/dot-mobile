import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_question_usecase.freezed.dart';
part 'create_question_usecase.g.dart';

@freezed
class CreateQuestionParams with _$CreateQuestionParams {
  const factory CreateQuestionParams({
    required int order,
    required int examId,
    required int? mediaId,
    required QuestionType type,
    required String question,
    required List<QuestionOptionModel> options,
  }) = _CreateQuestionParams;

  const CreateQuestionParams._();

  factory CreateQuestionParams.fromJson(Map<String, dynamic> json) =>
      _$CreateQuestionParamsFromJson(json);
}
