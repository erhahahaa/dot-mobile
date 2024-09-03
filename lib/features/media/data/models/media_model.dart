import 'dart:math';

import 'package:dot_coaching/core/constants/constants.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skeletonizer/skeletonizer.dart';

part 'media_model.freezed.dart';
part 'media_model.g.dart';

@freezed
class MediaModel extends MediaEntity with _$MediaModel {
  factory MediaModel({
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
  }) = _MediaModel;

  MediaModel._();

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
      thumbPath: entity.thumbPath,
      thumbUrl: entity.thumbUrl,
      aspectRatio: entity.aspectRatio,
      width: entity.width,
      height: entity.height,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

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
      thumbPath: thumbPath,
      thumbUrl: thumbUrl,
      aspectRatio: aspectRatio,
      width: width,
      height: height,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static MediaModel fake() {
    return MediaModel(
      id: Random().nextInt(100),
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
