import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_embed_model.freezed.dart';
part 'media_embed_model.g.dart';

@freezed
class MediaEmbedModel with _$MediaEmbedModel {
  const factory MediaEmbedModel({
    @Default(0) int id,
    @Default('') String name,
    @Default(0) int fileSize,
    @Default('') String url,
    @Default(MediaType.applicationOctetStream) MediaType type,
  }) = _MediaEmbedModel;

  factory MediaEmbedModel.fromJson(Map<String, dynamic> json) =>
      _$MediaEmbedModelFromJson(json);

  static MediaEmbedModel fromEntity(MediaEmbedEntity entity) {
    return MediaEmbedModel(
      name: entity.name ?? '',
      fileSize: entity.fileSize ?? 0,
      url: entity.url ?? '',
      type: entity.type  ,
    );
  }
}

extension MediaEmbedModelX on MediaEmbedModel {
  MediaEmbedEntity toEntity() {
    return MediaEmbedEntity(
      name: name,
      fileSize: fileSize,
      url: url,
      type: type,
    );
  }
}
