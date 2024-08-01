import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_question_param.freezed.dart';
part 'create_question_param.g.dart';

@freezed
class CreateQuestionParams with _$CreateQuestionParams {
  const factory CreateQuestionParams({
    @Default(0) int order,
    @Default(0) int examId,
    int? mediaId,
    @Default(QuestionType.essay) QuestionType type,
    @Default('') String question,
    @Default([]) List<QuestionOptionModel> options,
  }) = _CreateQuestionParams;

  factory CreateQuestionParams.fromJson(Map<String, dynamic> json) =>
      _$CreateQuestionParamsFromJson(json);
}
