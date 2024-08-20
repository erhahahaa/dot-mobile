// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_program_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProgramParamsImpl _$$CreateProgramParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProgramParamsImpl(
      clubId: (json['clubId'] as num).toInt(),
      name: json['name'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$CreateProgramParamsImplToJson(
        _$CreateProgramParamsImpl instance) =>
    <String, dynamic>{
      'clubId': instance.clubId,
      'name': instance.name,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };
