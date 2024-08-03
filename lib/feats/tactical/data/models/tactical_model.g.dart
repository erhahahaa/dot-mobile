// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tactical_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TacticalModelImpl _$$TacticalModelImplFromJson(Map<String, dynamic> json) =>
    _$TacticalModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      mediaId: (json['mediaId'] as num?)?.toInt(),
      name: json['name'] as String? ?? 'SBY Tactical exhibition',
      description: json['description'] as String?,
      board: json['board'] == null
          ? const TacticalBoardModel()
          : TacticalBoardModel.fromJson(json['board'] as Map<String, dynamic>),
      strategic: json['strategic'] == null
          ? null
          : TacticalStrategicModel.fromJson(
              json['strategic'] as Map<String, dynamic>),
      isLive: json['isLive'] as bool? ?? false,
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
      'mediaId': instance.mediaId,
      'name': instance.name,
      'description': instance.description,
      'board': instance.board,
      'strategic': instance.strategic,
      'isLive': instance.isLive,
      'media': instance.media,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$TacticalBoardModelImpl _$$TacticalBoardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TacticalBoardModelImpl(
      width: (json['width'] as num?)?.toDouble() ?? 0,
      height: (json['height'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$TacticalBoardModelImplToJson(
        _$TacticalBoardModelImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
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
