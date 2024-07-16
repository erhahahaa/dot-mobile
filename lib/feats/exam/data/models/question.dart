import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    @Default(0) int id,
    @Default(0) int clubId,
    @Default(0) int examId,
    @Default(QuestionType.essay) QuestionType type,
    @Default('') String content,
    @Default('') String answer,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}

extension QuestionModelX on QuestionModel {
  //toEntity
  QuestionEntity toEntity() {
    return QuestionEntity(
      id: id,
      clubId: clubId,
      examId: examId,
      type: type,
      content: content,
      answer: answer,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
