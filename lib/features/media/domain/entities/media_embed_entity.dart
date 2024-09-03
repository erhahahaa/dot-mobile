import 'package:dot_coaching/features/feature.dart';

class MediaEmbedEntity {
  final int id;
  final int creatorId;
  final int clubId;
  final String name;
  final String? description;
  final int fileSize;
  final String path;
  final MediaType type;
  final MediaParent parent;
  final String url;
  final String? thumbPath;
  final String? thumbUrl;
  final double? aspectRatio;
  final int? width;
  final int? height;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const MediaEmbedEntity({
    this.id = 0,
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

  // to json method
  Map<String, dynamic> toJson() {
    return {
      'creatorId': creatorId,
      'clubId': clubId,
      'name': name,
      'description': description,
      'fileSize': fileSize,
      'path': path,
      'type': type.value,
      'parent': parent.value,
      'url': url,
      'thumbPath': thumbPath,
      'thumbUrl': thumbUrl,
      'aspectRatio': aspectRatio,
      'width': width,
      'height': height,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  // from json method
  factory MediaEmbedEntity.fromJson(Map<String, dynamic> json) {
    return MediaEmbedEntity(
      creatorId: json['creatorId'],
      clubId: json['clubId'],
      name: json['name'],
      description: json['description'],
      fileSize: json['fileSize'],
      path: json['path'],
      type: MediaType.fromString(json['type']),
      parent: MediaParent.fromString(json['parent']),
      url: json['url'],
      thumbPath: json['thumbPath'],
      thumbUrl: json['thumbUrl'],
      aspectRatio: json['aspectRatio'],
      width: json['width'],
      height: json['height'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}
