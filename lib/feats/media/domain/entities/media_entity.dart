import 'package:dot_coaching/feats/feats.dart';
import 'package:isar/isar.dart';

part 'media_entity.g.dart';

@collection
class MediaEntity {
  Id id = Isar.autoIncrement;
  int creatorId;
  int clubId;
  String name;
  String? description;
  int fileSize;
  String path;
  @enumerated
  MediaType type;
  @enumerated
  MediaParent parent;
  String url;
  String? thumbPath;
  String? thumbUrl;
  DateTime? createdAt;
  DateTime? updatedAt;

  MediaEntity({
    this.id = Isar.autoIncrement,
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
    this.createdAt,
    this.updatedAt,
  });
}
