import 'package:isar/isar.dart';

part 'media.g.dart';

@embedded
class MediaEmbedEntity {
  String? name;
  int? fileSize;
  String? url;
  String? type;

  MediaEmbedEntity({
    this.name,
    this.fileSize,
    this.url,
    this.type,
  });
}
