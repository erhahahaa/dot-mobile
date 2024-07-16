// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tactical.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTacticalParamsImpl _$$CreateTacticalParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTacticalParamsImpl(
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      sportType: json['sportType'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$CreateTacticalParamsImplToJson(
        _$CreateTacticalParamsImpl instance) =>
    <String, dynamic>{
      'clubId': instance.clubId,
      'sportType': instance.sportType,
      'name': instance.name,
      'description': instance.description,
    };
