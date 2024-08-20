// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_exam_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateExamParamsImpl _$$UpdateExamParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateExamParamsImpl(
      id: (json['id'] as num).toInt(),
      clubId: (json['clubId'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String?,
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$UpdateExamParamsImplToJson(
        _$UpdateExamParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clubId': instance.clubId,
      'title': instance.title,
      'description': instance.description,
      'endDate': instance.endDate?.toIso8601String(),
    };
