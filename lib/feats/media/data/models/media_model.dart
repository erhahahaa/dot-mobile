import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_model.freezed.dart';
part 'media_model.g.dart';

@freezed
class MediaModel with _$MediaModel {
  const factory MediaModel({
    @Default(0) int id,
    @Default(0) int creatorId,
    @Default(0) int clubId,
    @Default('') String name,
    String? description,
    @Default(0) int fileSize,
    @Default('') String path,
    @Default(MediaType.applicationOctetStream) MediaType type,
    @Default(MediaParent.club) MediaParent parent,
    @Default('') String url,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);

  static MediaModel fromEntity(MediaEntity entity) {
    return MediaModel(
      id: entity.id,
      creatorId: entity.creatorId,
      clubId: entity.clubId,
      name: entity.name,
      description: entity.description,
      fileSize: entity.fileSize,
      path: entity.path,
      type: entity.type,
      parent: entity.parent,
      url: entity.url,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }
}

extension MediaModelX on MediaModel {
  MediaEntity toEntity() {
    return MediaEntity(
      id: id,
      creatorId: creatorId,
      clubId: clubId,
      name: name,
      description: description,
      fileSize: fileSize,
      path: path,
      type: type,
      parent: parent,
      url: url,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
