import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_question_param.freezed.dart';
part 'update_question_param.g.dart';

@freezed
class UpdateQuestionParams with _$UpdateQuestionParams {
  const factory UpdateQuestionParams({
    @Default(0) int id,
    @Default(0) int order,
    @Default(0) int examId,
    int? mediaId,
    @Default(QuestionType.text) QuestionType type,
    @Default('') String question,
    @Default([]) List<QuestionOptionModel> options,
  }) = _UpdateQuestionParams;

  factory UpdateQuestionParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateQuestionParamsFromJson(json);
}
