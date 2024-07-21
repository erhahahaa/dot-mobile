import 'package:isar/isar.dart';

part 'media.g.dart';

@embedded
class MediaEntity {
  String? name;
  int? fileSize;
  String? url;
  String? type;

  MediaEntity({
    this.name,
    this.fileSize,
    this.url,
    this.type,
  });
}
