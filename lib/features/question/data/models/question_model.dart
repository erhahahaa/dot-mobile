import 'dart:math';

import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    @Default(0) int id,
    @Default(0) int examId,
    @Default(QuestionType.text) QuestionType type,
    @Default('Mention 5 basic Movement') String question,
    @Default([]) List<QuestionOptionModel> options,
    @Default(0) int order,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _QuestionModel;

  const QuestionModel._();

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  static QuestionModel fromEntity(QuestionEntity entity) {
    return QuestionModel(
      id: entity.id,
      examId: entity.examId,
      type: entity.type,
      question: entity.question,
      options:
          entity.options.map((e) => QuestionOptionModel.fromEntity(e)).toList(),
      order: entity.order,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  QuestionEntity toEntity() {
    return QuestionEntity(
      id: id,
      examId: examId,
      type: type,
      question: question,
      options: options.map((e) => e.toEntity()).toList(),
      order: order,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static QuestionModel fake() {
    return QuestionModel(
      id: Random().nextInt(100),
      examId: Random().nextInt(100),
      order: Random().nextInt(100),
      type: QuestionType.text,
      question: 'Mention 5 basic Movement',
    );
  }
}

@freezed
class QuestionOptionModel with _$QuestionOptionModel {
  factory QuestionOptionModel({
    @Default(0) int order,
    @Default('') String text,
    // @Default(QuestionOptionType.text) QuestionOptionType type,
  }) = _QuestionOptionModel;

  QuestionOptionModel._();

  factory QuestionOptionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionOptionModelFromJson(json);

  static QuestionOptionModel fromEntity(QuestionOptionEntity entity) {
    return QuestionOptionModel(
      order: entity.order,
      text: entity.text,
      // type: entity.type,
    );
  }

  QuestionOptionEntity toEntity() {
    return QuestionOptionEntity(
      order: order,
      text: text,
      // type: type,
    );
  }
}
