// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arrow_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArrowModelImpl _$$ArrowModelImplFromJson(Map<String, dynamic> json) =>
    _$ArrowModelImpl(
      startX: (json['startX'] as num?)?.toDouble() ?? 0,
      startY: (json['startY'] as num?)?.toDouble() ?? 0,
      endX: (json['endX'] as num?)?.toDouble() ?? 0,
      endY: (json['endY'] as num?)?.toDouble() ?? 0,
      hexColor: (json['hexColor'] as num?)?.toInt() ?? 0xFFC90508,
    );

Map<String, dynamic> _$$ArrowModelImplToJson(_$ArrowModelImpl instance) =>
    <String, dynamic>{
      'startX': instance.startX,
      'startY': instance.startY,
      'endX': instance.endX,
      'endY': instance.endY,
      'hexColor': instance.hexColor,
    };
