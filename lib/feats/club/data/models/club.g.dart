// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClubModelImpl _$$ClubModelImplFromJson(Map<String, dynamic> json) =>
    _$ClubModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      creatorId: (json['creator_id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? 'Indo Sports',
      description: json['description'] as String? ?? 'Sport Club',
      image: json['image'] as String? ??
          "https://api.dicebear.com/9.x/adventurer/png",
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ClubModelImplToJson(_$ClubModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creator_id': instance.creatorId,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'created_at': instance.createdAt?.toIso8601String(),
    };
