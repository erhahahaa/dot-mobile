// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_evaluation_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateEvaluationParamsImpl _$$CreateEvaluationParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateEvaluationParamsImpl(
      examId: (json['examId'] as num?)?.toInt() ?? 0,
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      questionId: (json['questionId'] as num?)?.toInt() ?? 0,
      coachId: (json['coachId'] as num?)?.toInt() ?? 0,
      answer: json['answer'] as String?,
      score: (json['score'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CreateEvaluationParamsImplToJson(
        _$CreateEvaluationParamsImpl instance) =>
    <String, dynamic>{
      'examId': instance.examId,
      'clubId': instance.clubId,
      'questionId': instance.questionId,
      'coachId': instance.coachId,
      'answer': instance.answer,
      'score': instance.score,
    };
