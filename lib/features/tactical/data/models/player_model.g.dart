// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerModelImpl _$$PlayerModelImplFromJson(Map<String, dynamic> json) =>
    _$PlayerModelImpl(
      alias: json['alias'] as String? ?? 'folks',
      number: (json['number'] as num?)?.toInt() ?? 0,
      team: (json['team'] as num?)?.toInt() ?? 0,
      hexColor: (json['hexColor'] as num?)?.toInt() ?? 0xFFC90508,
      x: (json['x'] as num?)?.toDouble() ?? 0,
      y: (json['y'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$PlayerModelImplToJson(_$PlayerModelImpl instance) =>
    <String, dynamic>{
      'alias': instance.alias,
      'number': instance.number,
      'team': instance.team,
      'hexColor': instance.hexColor,
      'x': instance.x,
      'y': instance.y,
    };
