// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgramModelImpl _$$ProgramModelImplFromJson(Map<String, dynamic> json) =>
    _$ProgramModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      clubId: (json['club_id'] as num?)?.toInt() ?? 0,
      sportType: json['sport_type'] as String? ?? '',
      name: json['name'] as String? ?? '',
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ProgramModelImplToJson(_$ProgramModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'club_id': instance.clubId,
      'sport_type': instance.sportType,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
