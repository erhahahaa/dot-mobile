// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_embed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaEmbedModelImpl _$$MediaEmbedModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaEmbedModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      fileSize: (json['fileSize'] as num?)?.toInt() ?? 0,
      url: json['url'] as String? ?? '',
      type: $enumDecodeNullable(_$MediaTypeEnumMap, json['type']) ??
          MediaType.applicationOctetStream,
    );

Map<String, dynamic> _$$MediaEmbedModelImplToJson(
        _$MediaEmbedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fileSize': instance.fileSize,
      'url': instance.url,
      'type': _$MediaTypeEnumMap[instance.type]!,
    };

const _$MediaTypeEnumMap = {
  MediaType.imagePng: 'image/png',
  MediaType.imageJpeg: 'image/jpeg',
  MediaType.imageJpg: 'image/jpg',
  MediaType.imageGif: 'image/gif',
  MediaType.imageSvgXml: 'image/svg+xml',
  MediaType.applicationPdf: 'application/pdf',
  MediaType.applicationMsword: 'application/msword',
  MediaType.applicationVndOpenXMLFormatsWord:
      'application/vnd.openxmlformats-word',
  MediaType.applicationVndMsExcel: 'application/vnd.ms-excel',
  MediaType.applicationVndOpenXMLFormatsExcel:
      'application/vnd.openxmlformats-excel',
  MediaType.textPlain: 'text/plain',
  MediaType.videoMp4: 'video/mp4',
  MediaType.videoAvi: 'video/avi',
  MediaType.videoMpeg: 'video/mpeg',
  MediaType.videoQuicktime: 'video/quicktime',
  MediaType.audioMpeg: 'audio/mpeg',
  MediaType.audioWav: 'audio/wav',
  MediaType.audioOgg: 'audio/ogg',
  MediaType.applicationZip: 'application/zip',
  MediaType.applicationXRarCompressed: 'application/x-rar-compressed',
  MediaType.applicationTar: 'application/tar',
  MediaType.applicationOctetStream: 'application/octet-stream',
};
