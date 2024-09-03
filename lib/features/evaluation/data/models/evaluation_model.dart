import 'dart:math';

import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'evaluation_model.freezed.dart';
part 'evaluation_model.g.dart';

@freezed
class EvaluationModel extends EvaluationEntity with _$EvaluationModel {
  const factory EvaluationModel({
    @Default(0) int id,
    @Default(0) int examId,
    @Default(0) int clubId,
    @Default(0) int athleteId,
    @Default(0) int coachId,
    @Default([]) List<QuestionEvaluationModel> evaluations,
    ExamModel? exam,
    UserModel? athlete,
    UserModel? coach,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _EvaluationModel;

  const EvaluationModel._();

  factory EvaluationModel.fromJson(Map<String, dynamic> json) =>
      _$EvaluationModelFromJson(json);

  static EvaluationModel fromEntity(EvaluationEntity entity) {
    return EvaluationModel(
      id: entity.id,
      examId: entity.examId,
      clubId: entity.clubId,
      athleteId: entity.athleteId,
      coachId: entity.coachId,
      evaluations: entity.evaluations
          .map((e) => QuestionEvaluationModel.fromEntity(e))
          .toList(),
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  EvaluationEntity toEntity() {
    return EvaluationEntity(
      id: id,
      examId: examId,
      clubId: clubId,
      athleteId: athleteId,
      coachId: coachId,
      evaluations: evaluations.map((e) => e.toEntity()).toList(),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static EvaluationModel fake() {
    return EvaluationModel(
      id: Random().nextInt(100),
      examId: Random().nextInt(100),
      clubId: Random().nextInt(100),
      athleteId: Random().nextInt(100),
      coachId: Random().nextInt(100),
      evaluations:
          List.generate(3, (index) => QuestionEvaluationModel.fake()).toList(),
    );
  }
}

@freezed
class QuestionEvaluationModel extends QuestionEvaluationEntity
    with _$QuestionEvaluationModel {
  factory QuestionEvaluationModel({
    @Default(0) int questionId,
    String? answer,
    int? score,
    String? questionName,
  }) = _QuestionEvaluationModel;

  QuestionEvaluationModel._();

  factory QuestionEvaluationModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionEvaluationModelFromJson(json);

  static QuestionEvaluationModel fromEntity(QuestionEvaluationEntity entity) {
    return QuestionEvaluationModel(
      questionId: entity.questionId,
      answer: entity.answer,
      score: entity.score,
      questionName: entity.questionName,
    );
  }

  QuestionEvaluationEntity toEntity() {
    return QuestionEvaluationEntity(
      questionId: questionId,
      answer: answer,
      score: score,
    );
  }

  static QuestionEvaluationModel fake() {
    return QuestionEvaluationModel(
      questionId: Random().nextInt(100),
      answer: 'Answer',
      score: Random().nextInt(100),
      questionName: 'Evaluation Name',
    );
  }
}
