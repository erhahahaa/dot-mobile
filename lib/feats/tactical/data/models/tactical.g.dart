// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tactical.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TacticalModelImpl _$$TacticalModelImplFromJson(Map<String, dynamic> json) =>
    _$TacticalModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      clubId: (json['club_id'] as num?)?.toInt() ?? 0,
      sportType: json['sport_type'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TacticalModelImplToJson(_$TacticalModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'club_id': instance.clubId,
      'sport_type': instance.sportType,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
