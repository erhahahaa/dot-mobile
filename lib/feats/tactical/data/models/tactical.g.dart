// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tactical.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TacticalModelImpl _$$TacticalModelImplFromJson(Map<String, dynamic> json) =>
    _$TacticalModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      sportType: json['sportType'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$TacticalModelImplToJson(_$TacticalModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clubId': instance.clubId,
      'sportType': instance.sportType,
      'name': instance.name,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
