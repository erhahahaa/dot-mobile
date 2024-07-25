// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_tactical_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateTacticalParamsImpl _$$UpdateTacticalParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTacticalParamsImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      sportType: json['sportType'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$UpdateTacticalParamsImplToJson(
        _$UpdateTacticalParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clubId': instance.clubId,
      'sportType': instance.sportType,
      'name': instance.name,
      'description': instance.description,
    };
