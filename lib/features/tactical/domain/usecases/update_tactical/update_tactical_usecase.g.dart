// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_tactical_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateTacticalParamsImpl _$$UpdateTacticalParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTacticalParamsImpl(
      id: (json['id'] as num).toInt(),
      clubId: (json['clubId'] as num).toInt(),
      mediaId: (json['mediaId'] as num?)?.toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      board: json['board'] == null
          ? null
          : TacticalBoardModel.fromJson(json['board'] as Map<String, dynamic>),
      strategic: json['strategic'] == null
          ? null
          : TacticalStrategicModel.fromJson(
              json['strategic'] as Map<String, dynamic>),
      isLive: json['isLive'] as bool,
    );

Map<String, dynamic> _$$UpdateTacticalParamsImplToJson(
        _$UpdateTacticalParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clubId': instance.clubId,
      'mediaId': instance.mediaId,
      'name': instance.name,
      'description': instance.description,
      'board': instance.board,
      'strategic': instance.strategic,
      'isLive': instance.isLive,
    };
