// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProgramParamsImpl _$$UpdateProgramParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProgramParamsImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      sportType: json['sportType'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$UpdateProgramParamsImplToJson(
        _$UpdateProgramParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clubId': instance.clubId,
      'sportType': instance.sportType,
      'name': instance.name,
    };
