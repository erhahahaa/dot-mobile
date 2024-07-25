// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_embed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaEmbedModelImpl _$$MediaEmbedModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaEmbedModelImpl(
      name: json['name'] as String? ?? '',
      fileSize: (json['fileSize'] as num?)?.toInt() ?? 0,
      url: json['url'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$$MediaEmbedModelImplToJson(
        _$MediaEmbedModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fileSize': instance.fileSize,
      'url': instance.url,
      'type': instance.type,
    };
