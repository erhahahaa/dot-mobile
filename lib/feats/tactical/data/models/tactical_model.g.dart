// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tactical_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TacticalModelImpl _$$TacticalModelImplFromJson(Map<String, dynamic> json) =>
    _$TacticalModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      imageId: (json['imageId'] as num?)?.toInt(),
      name: json['name'] as String? ?? 'SBY Tactical exhibition',
      description: json['description'] as String?,
      board: json['board'] == null
          ? null
          : TacticalBoardModel.fromJson(json['board'] as Map<String, dynamic>),
      team: json['team'] == null
          ? null
          : TacticalTeamModel.fromJson(json['team'] as Map<String, dynamic>),
      strategic: json['strategic'] == null
          ? null
          : TacticalStrategicModel.fromJson(
              json['strategic'] as Map<String, dynamic>),
      media: json['media'] == null
          ? null
          : MediaEmbedModel.fromJson(json['media'] as Map<String, dynamic>),
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
      'imageId': instance.imageId,
      'name': instance.name,
      'description': instance.description,
      'board': instance.board,
      'team': instance.team,
      'strategic': instance.strategic,
      'media': instance.media,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$TacticalBoardModelImpl _$$TacticalBoardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TacticalBoardModelImpl(
      type: json['type'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$TacticalBoardModelImplToJson(
        _$TacticalBoardModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'url': instance.url,
    };

_$TacticalTeamModelImpl _$$TacticalTeamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TacticalTeamModelImpl(
      name: json['name'] as String?,
      color: json['color'] as String?,
      totalMembers: (json['totalMembers'] as num?)?.toInt(),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) =>
              TacticalTeamMemberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TacticalTeamModelImplToJson(
        _$TacticalTeamModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
      'totalMembers': instance.totalMembers,
      'members': instance.members,
    };

_$TacticalTeamMemberModelImpl _$$TacticalTeamMemberModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TacticalTeamMemberModelImpl(
      name: json['name'] as String?,
      number: (json['number'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TacticalTeamMemberModelImplToJson(
        _$TacticalTeamMemberModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
    };

_$TacticalStrategicModelImpl _$$TacticalStrategicModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TacticalStrategicModelImpl(
      value: json['value'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TacticalStrategicModelImplToJson(
        _$TacticalStrategicModelImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
