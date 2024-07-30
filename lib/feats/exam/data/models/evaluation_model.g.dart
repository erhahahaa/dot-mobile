// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EvaluationModelImpl _$$EvaluationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EvaluationModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      examId: (json['examId'] as num?)?.toInt() ?? 0,
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      questionId: (json['questionId'] as num?)?.toInt() ?? 0,
      athleteId: (json['athleteId'] as num?)?.toInt() ?? 0,
      coachId: (json['coachId'] as num?)?.toInt() ?? 0,
      answer: json['answer'] as String?,
      score: (json['score'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$EvaluationModelImplToJson(
        _$EvaluationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'examId': instance.examId,
      'clubId': instance.clubId,
      'questionId': instance.questionId,
      'athleteId': instance.athleteId,
      'coachId': instance.coachId,
      'answer': instance.answer,
      'score': instance.score,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
