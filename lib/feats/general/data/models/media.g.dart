// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaModelImpl _$$MediaModelImplFromJson(Map<String, dynamic> json) =>
    _$MediaModelImpl(
      name: json['name'] as String? ?? '',
      fileSize: (json['fileSize'] as num?)?.toInt() ?? 0,
      url: json['url'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$$MediaModelImplToJson(_$MediaModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fileSize': instance.fileSize,
      'url': instance.url,
      'type': instance.type,
    };
