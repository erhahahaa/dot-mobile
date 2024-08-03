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
      mediaId: (json['mediaId'] as num?)?.toInt(),
      name: json['name'] as String? ?? '',
      description: json['description'] as String?,
      board: json['board'] == null
          ? const TacticalBoardModel()
          : TacticalBoardModel.fromJson(json['board'] as Map<String, dynamic>),
      isLive: json['isLive'] as bool? ?? false,
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
      'isLive': instance.isLive,
    };
