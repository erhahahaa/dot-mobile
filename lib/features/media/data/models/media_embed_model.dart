import 'dart:math';

import 'package:dot_coaching/core/constants/constants.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skeletonizer/skeletonizer.dart';

part 'media_embed_model.freezed.dart';
part 'media_embed_model.g.dart';

@freezed
class MediaEmbedModel with _$MediaEmbedModel {
  factory MediaEmbedModel({
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
    String? thumbPath,
    String? thumbUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _MediaEmbedModel;

  MediaEmbedModel._();

  factory MediaEmbedModel.fromJson(Map<String, dynamic> json) =>
      _$MediaEmbedModelFromJson(json);

  static MediaEmbedModel fromEntity(MediaEmbedEntity entity) {
    return MediaEmbedModel(
      creatorId: entity.creatorId,
      clubId: entity.clubId,
      name: entity.name,
      description: entity.description,
      fileSize: entity.fileSize,
      path: entity.path,
      type: entity.type,
      parent: entity.parent,
      url: entity.url,
      thumbPath: entity.thumbPath,
      thumbUrl: entity.thumbUrl,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  MediaEmbedEntity toEntity() {
    return MediaEmbedEntity(
      name: name,
      fileSize: fileSize,
      url: url,
      type: type,
      thumbPath: thumbPath,
      thumbUrl: thumbUrl,
    );
  }

  static MediaEmbedModel fake() {
    return MediaEmbedModel(
      name: BoneMock.name,
      fileSize: Random().nextInt(100),
      url: AppConstants.SPORT_IMAGE,
      type: MediaType.applicationOctetStream,
      thumbPath: BoneMock.subtitle,
      thumbUrl: AppConstants.SPORT_IMAGE,
    );
  }
}
