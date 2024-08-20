// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_evaluation_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateEvaluationParamsImpl _$$CreateEvaluationParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateEvaluationParamsImpl(
      clubId: (json['clubId'] as num).toInt(),
      examId: (json['examId'] as num).toInt(),
      athleteId: (json['athleteId'] as num).toInt(),
      coachId: (json['coachId'] as num).toInt(),
      evaluations: (json['evaluations'] as List<dynamic>)
          .map((e) =>
              QuestionEvaluationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
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
