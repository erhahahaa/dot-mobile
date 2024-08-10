// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_evaluation_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateEvaluationParamsImpl _$$CreateEvaluationParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateEvaluationParamsImpl(
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      examId: (json['examId'] as num?)?.toInt() ?? 0,
      athleteId: (json['athleteId'] as num?)?.toInt() ?? 0,
      coachId: (json['coachId'] as num?)?.toInt() ?? 0,
      evaluations: (json['evaluations'] as List<dynamic>?)
              ?.map((e) =>
                  QuestionEvaluationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CreateEvaluationParamsImplToJson(
        _$CreateEvaluationParamsImpl instance) =>
    <String, dynamic>{
      'clubId': instance.clubId,
      'examId': instance.examId,
      'athleteId': instance.athleteId,
      'coachId': instance.coachId,
      'evaluations': instance.evaluations,
    };
