// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_exam_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateExamParamsImpl _$$CreateExamParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateExamParamsImpl(
      clubId: (json['clubId'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String?,
      dueAt: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$CreateExamParamsImplToJson(
        _$CreateExamParamsImpl instance) =>
    <String, dynamic>{
      'clubId': instance.clubId,
      'title': instance.title,
      'description': instance.description,
      'endDate': instance.dueAt?.toIso8601String(),
    };
