import 'package:dot_coaching/feats/feats.dart';
import 'package:isar/isar.dart';

part 'media.g.dart';

@embedded
class MediaEmbedEntity {
  String? name;
  int? fileSize;
  @enumerated
  MediaType type;
  String? url;
  String? thumbPath;
  String? thumbUrl;

  MediaEmbedEntity({
    this.name,
    this.fileSize,
    this.url,
    this.type = MediaType.applicationOctetStream,
    this.thumbPath,
    this.thumbUrl,
  });
}
