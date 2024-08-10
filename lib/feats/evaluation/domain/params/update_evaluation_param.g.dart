// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_evaluation_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateEvaluationParamsImpl _$$UpdateEvaluationParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateEvaluationParamsImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
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

Map<String, dynamic> _$$UpdateEvaluationParamsImplToJson(
        _$UpdateEvaluationParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clubId': instance.clubId,
      'examId': instance.examId,
      'athleteId': instance.athleteId,
      'coachId': instance.coachId,
      'evaluations': instance.evaluations,
    };
