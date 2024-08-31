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
    double? aspectRatio,
    int? width,
    int? height,
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
      aspectRatio: entity.aspectRatio,
      width: entity.width,
      height: entity.height,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  MediaEmbedEntity toEntity() {
    return MediaEmbedEntity(
      creatorId: creatorId,
      clubId: clubId,
      name: name,
      description: description,
      fileSize: fileSize,
      path: path,
      type: type,
      parent: parent,
      url: url,
      thumbPath: thumbPath,
      thumbUrl: thumbUrl,
      aspectRatio: aspectRatio,
      width: width,
      height: height,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static MediaEmbedModel fake() {
    return MediaEmbedModel(
      creatorId: Random().nextInt(100),
      clubId: Random().nextInt(100),
      name: BoneMock.name,
      description: BoneMock.subtitle,
      fileSize: Random().nextInt(100),
      path: BoneMock.subtitle,
      url: AppConstants.SPORT_IMAGE,
      type: MediaType.imageJpg,
      aspectRatio: 1.0,
      width: 100,
      height: 100,
    );
  }
}
