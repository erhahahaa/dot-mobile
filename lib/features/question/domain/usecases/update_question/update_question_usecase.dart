import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_question_usecase.freezed.dart';
part 'update_question_usecase.g.dart';

@freezed
class UpdateQuestionParams with _$UpdateQuestionParams {
  const factory UpdateQuestionParams({
    required int id,
    required int order,
    required int examId,
    required int? mediaId,
    required QuestionType type,
    required String question,
    required List<QuestionOptionModel> options,
  }) = _UpdateQuestionParams;

  const UpdateQuestionParams._();

  factory UpdateQuestionParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateQuestionParamsFromJson(json);
}
