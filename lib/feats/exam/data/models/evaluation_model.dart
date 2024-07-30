import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'evaluation_model.freezed.dart';
part 'evaluation_model.g.dart';

@freezed
class EvaluationModel with _$EvaluationModel {
  const factory EvaluationModel({
    @Default(0) int id,
    @Default(0) int examId,
    @Default(0) int clubId,
    @Default(0) int questionId,
    @Default(0) int athleteId,
    @Default(0) int coachId,
    String? answer,
    int? score,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _EvaluationModel;

  factory EvaluationModel.fromJson(Map<String, dynamic> json) =>
      _$EvaluationModelFromJson(json);

  static EvaluationModel fromEntity(EvaluationEntity entity) {
    return EvaluationModel(
      id: entity.id,
      examId: entity.examId,
      clubId: entity.clubId,
      questionId: entity.questionId,
      athleteId: entity.athleteId,
      coachId: entity.coachId,
      answer: entity.answer,
      score: entity.score,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }
}

extension EvaluationModelX on EvaluationModel {
  EvaluationEntity toEntity() {
    return EvaluationEntity(
      id: id,
      examId: examId,
      clubId: clubId,
      questionId: questionId,
      athleteId: athleteId,
      coachId: coachId,
      answer: answer,
      score: score,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
