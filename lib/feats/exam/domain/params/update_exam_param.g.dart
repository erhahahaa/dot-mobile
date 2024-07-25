// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_exam_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateExamParamsImpl _$$UpdateExamParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateExamParamsImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      dueAt: json['dueAt'] == null
          ? null
          : DateTime.parse(json['dueAt'] as String),
    );

Map<String, dynamic> _$$UpdateExamParamsImplToJson(
        _$UpdateExamParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clubId': instance.clubId,
      'name': instance.name,
      'description': instance.description,
      'dueAt': instance.dueAt?.toIso8601String(),
    };
