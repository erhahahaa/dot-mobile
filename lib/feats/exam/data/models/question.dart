import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    @Default(0) int id,
    @Default(0) int examId,
    int? mediaId,
    @Default(QuestionType.essay) QuestionType type,
    @Default('Mention 5 basic Movement') String content,
    @Default('') String answer,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  static QuestionModel fromEntity(QuestionEntity entity) {
    return QuestionModel(
      id: entity.id,
      examId: entity.examId,
      type: entity.type,
      content: entity.content,
      answer: entity.answer,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }
}

extension QuestionModelX on QuestionModel {
  QuestionEntity toEntity() {
    return QuestionEntity(
      id: id,
      examId: examId,
      type: type,
      content: content,
      answer: answer,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
