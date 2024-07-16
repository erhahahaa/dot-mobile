// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_exam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateExamParamsImpl _$$CreateExamParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateExamParamsImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      dueAt: json['dueAt'] == null
          ? null
          : DateTime.parse(json['dueAt'] as String),
    );

Map<String, dynamic> _$$CreateExamParamsImplToJson(
        _$CreateExamParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clubId': instance.clubId,
      'name': instance.name,
      'description': instance.description,
      'dueAt': instance.dueAt?.toIso8601String(),
    };
