// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProgramParamsImpl _$$CreateProgramParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProgramParamsImpl(
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      sportType: json['sportType'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$CreateProgramParamsImplToJson(
        _$CreateProgramParamsImpl instance) =>
    <String, dynamic>{
      'clubId': instance.clubId,
      'sportType': instance.sportType,
      'name': instance.name,
    };
