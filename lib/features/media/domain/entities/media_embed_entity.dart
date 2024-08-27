import 'package:dot_coaching/features/feature.dart';
import 'package:isar/isar.dart';

part 'media_embed_entity.g.dart';

@embedded
class MediaEmbedEntity {
  int creatorId;
  int clubId;
  String name;
  String? description;
  int fileSize;
  String path;
  @enumValue
  MediaType type;
  @enumValue
  MediaParent parent;
  String url;
  String? thumbPath;
  String? thumbUrl;
  double? aspectRatio;
  int? width;
  int? height;
  DateTime? createdAt;
  DateTime? updatedAt;

  MediaEmbedEntity({
    this.creatorId = 0,
    this.clubId = 0,
    this.name = '',
    this.description,
    this.fileSize = 0,
    this.path = '',
    this.type = MediaType.applicationOctetStream,
    this.parent = MediaParent.club,
    this.url = '',
    this.thumbPath,
    this.thumbUrl,
    this.aspectRatio,
    this.width,
    this.height,
    this.createdAt,
    this.updatedAt,
  });
}
