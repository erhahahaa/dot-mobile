// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaModelImpl _$$MediaModelImplFromJson(Map<String, dynamic> json) =>
    _$MediaModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      creatorId: (json['creatorId'] as num?)?.toInt() ?? 0,
      clubId: (json['clubId'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String?,
      fileSize: (json['fileSize'] as num?)?.toInt() ?? 0,
      path: json['path'] as String? ?? '',
      type: $enumDecodeNullable(_$MediaTypeEnumMap, json['type']) ??
          MediaType.applicationOctetStream,
      parent: $enumDecodeNullable(_$MediaParentEnumMap, json['parent']) ??
          MediaParent.club,
      url: json['url'] as String? ?? '',
      thumbPath: json['thumbPath'] as String?,
      thumbUrl: json['thumbUrl'] as String?,
      aspectRatio: (json['aspectRatio'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$MediaModelImplToJson(_$MediaModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creatorId': instance.creatorId,
      'clubId': instance.clubId,
      'name': instance.name,
      'description': instance.description,
      'fileSize': instance.fileSize,
      'path': instance.path,
      'type': _$MediaTypeEnumMap[instance.type]!,
      'parent': _$MediaParentEnumMap[instance.parent]!,
      'url': instance.url,
      'thumbPath': instance.thumbPath,
      'thumbUrl': instance.thumbUrl,
      'aspectRatio': instance.aspectRatio,
      'width': instance.width,
      'height': instance.height,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$MediaTypeEnumMap = {
  MediaType.imagePng: 'image/png',
  MediaType.imageJpeg: 'image/jpeg',
  MediaType.imageJpg: 'image/jpg',
  MediaType.imageSvgXml: 'image/svg+xml',
  MediaType.videoMp4: 'video/mp4',
  MediaType.applicationOctetStream: 'application/octet-stream',
};

const _$MediaParentEnumMap = {
  MediaParent.club: 'club',
  MediaParent.program: 'program',
  MediaParent.exercise: 'exercise',
  MediaParent.exam: 'exam',
  MediaParent.question: 'question',
  MediaParent.tactical: 'tactical',
  MediaParent.user: 'user',
};
