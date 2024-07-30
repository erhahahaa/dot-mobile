// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_model.dart';

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
      media: json['media'] == null
          ? null
          : MediaEmbedModel.fromJson(json['media'] as Map<String, dynamic>),
      memberCount: (json['memberCount'] as num?)?.toInt() ?? 0,
      programCount: (json['programCount'] as num?)?.toInt() ?? 0,
      examCount: (json['examCount'] as num?)?.toInt() ?? 0,
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
      'media': instance.media,
      'memberCount': instance.memberCount,
      'programCount': instance.programCount,
      'examCount': instance.examCount,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

const _$SportTypeEnumMap = {
  SportType.volleyBall: 'volleyBall',
  SportType.basketBall: 'basketBall',
  SportType.soccer: 'soccer',
  SportType.futsal: 'futsal',
  SportType.handBall: 'handBall',
};
