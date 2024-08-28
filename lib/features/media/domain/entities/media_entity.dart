import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'media_entity.g.dart';

enum MediaParent {
  club,
  program,
  exercise,
  exam,
  question,
  tactical,
  user;

  String get value {
    switch (this) {
      case MediaParent.club:
        return 'club';
      case MediaParent.program:
        return 'program';
      case MediaParent.exercise:
        return 'exercise';
      case MediaParent.exam:
        return 'exam';
      case MediaParent.question:
        return 'question';
      case MediaParent.tactical:
        return 'tactical';
      case MediaParent.user:
        return 'user';
    }
  }

  static MediaParent fromString(String value) {
    switch (value) {
      case 'club' || 'Club':
        return MediaParent.club;
      case 'program' || 'Program':
        return MediaParent.program;
      case 'exercise' || 'Exercise':
        return MediaParent.exercise;
      case 'exam' || 'Exam':
        return MediaParent.exam;
      case 'question' || 'Question':
        return MediaParent.question;
      case 'tactical' || 'Tactical':
        return MediaParent.tactical;
      case 'user' || 'User':
        return MediaParent.user;
      default:
        throw Exception('Unknown media parent: $value');
    }
  }

  static int fromStringToInt(String value) {
    switch (value) {
      case 'club' || 'Club':
        return 0;
      case 'program' || 'Program':
        return 1;
      case 'exercise' || 'Exercise':
        return 2;
      case 'exam' || 'Exam':
        return 3;
      case 'question' || 'Question':
        return 4;
      case 'tactical' || 'Tactical':
        return 5;
      case 'user' || 'User':
        return 6;
      default:
        throw Exception('Unknown media parent: $value');
    }
  }
}

enum MediaType {
  // Image
  @JsonValue('image/png')
  imagePng,
  @JsonValue('image/jpeg')
  imageJpeg,
  @JsonValue('image/jpg')
  imageJpg,
  // svg
  @JsonValue('image/svg+xml')
  imageSvgXml,
  // Video
  @JsonValue('video/mp4')
  videoMp4,
  // Other
  @JsonValue('application/octet-stream')
  applicationOctetStream;

  String get value {
    switch (this) {
      case MediaType.imagePng:
        return 'image/png';
      case MediaType.imageJpeg:
        return 'image/jpeg';
      case MediaType.imageJpg:
        return 'image/jpg';
      case MediaType.imageSvgXml:
        return 'image/svg+xml';
      case MediaType.videoMp4:
        return 'video/mp4';
      case MediaType.applicationOctetStream:
        return 'application/octet-stream';
      default:
        throw ArgumentError('Unknown media type: $this');
    }
  }

  static MediaType fromString(String value) {
    switch (value) {
      case 'image/png':
        return MediaType.imagePng;
      case 'image/jpeg':
        return MediaType.imageJpeg;
      case 'image/jpg':
        return MediaType.imageJpg;
      case 'image/svg+xml':
        return MediaType.imageSvgXml;
      case 'video/mp4':
        return MediaType.videoMp4;
      case 'application/octet-stream':
        return MediaType.applicationOctetStream;
      default:
        throw ArgumentError('Unknown media type: $value');
    }
  }
}

@Collection(accessor: 'medias')
class MediaEntity {
  final int id;
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

  MediaEntity({
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
}

extension MediaTypeX on MediaType {
  String get value {
    switch (this) {
      case MediaType.imagePng:
        return 'image/png';
      case MediaType.imageJpeg:
        return 'image/jpeg';
      case MediaType.imageJpg:
        return 'image/jpg';
      case MediaType.imageSvgXml:
        return 'image/svg+xml';
      case MediaType.videoMp4:
        return 'video/mp4';
      case MediaType.applicationOctetStream:
        return 'application/octet-stream';
    }
  }
}
