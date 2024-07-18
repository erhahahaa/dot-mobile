// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClubModelImpl _$$ClubModelImplFromJson(Map<String, dynamic> json) =>
    _$ClubModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      creatorId: (json['creatorId'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? 'Indo Sports',
      description: json['description'] as String? ?? 'Sport Club',
      type: $enumDecodeNullable(_$SportTypeEnumMap, json['type']) ??
          SportType.basketBall,
      image: json['image'] as String? ??
          "https://img.freepik.com/free-photo/sports-tools_53876-138077.jpg",
      memberCount: (json['memberCount'] as num?)?.toInt() ?? 0,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ClubModelImplToJson(_$ClubModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creatorId': instance.creatorId,
      'name': instance.name,
      'description': instance.description,
      'type': _$SportTypeEnumMap[instance.type]!,
      'image': instance.image,
      'memberCount': instance.memberCount,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

const _$SportTypeEnumMap = {
  SportType.volleyBall: 'volleyBall',
  SportType.basketBall: 'basketBall',
  SportType.soccer: 'soccer',
};
