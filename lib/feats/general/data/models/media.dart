import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@freezed
class MediaModel with _$MediaModel {
  const factory MediaModel({
    @Default('') String name,
    @Default(0) int fileSize,
    @Default('') String url,
    @Default('') String type,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);

  static MediaModel fromEntity(MediaEntity entity) {
    return MediaModel(
      name: entity.name ?? '',
      fileSize: entity.fileSize ?? 0,
      url: entity.url ?? '',
      type: entity.type ?? '',
    );
  }
}

extension MediaModelX on MediaModel {
  MediaEntity toEntity() {
    return MediaEntity(
      name: name,
      fileSize: fileSize,
      url: url,
      type: type,
    );
  }
}
