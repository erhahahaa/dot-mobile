import 'package:json_annotation/json_annotation.dart';

export 'package:dot_coaching/feats/media/domain/entities/media.dart';

enum MediaParent {
  club,
  program,
  exercise,
  exam,
  question,
  user,
}

enum MediaType {
  // Image
  @JsonValue('image/png')
  imagePng,
  @JsonValue('image/jpeg')
  imageJpeg,
  @JsonValue('image/jpg')
  imageJpg,
  @JsonValue('image/gif')
  imageGif,
  @JsonValue('image/svg+xml')
  imageSvgXml,
  // Document
  @JsonValue('application/pdf')
  applicationPdf,
  @JsonValue('application/msword')
  applicationMsword,
  @JsonValue('application/vnd.openxmlformats-word')
  applicationVndOpenXMLFormatsWord,
  @JsonValue('application/vnd.ms-excel')
  applicationVndMsExcel,
  @JsonValue('application/vnd.openxmlformats-excel')
  applicationVndOpenXMLFormatsExcel,
  // Text
  @JsonValue('text/plain')
  textPlain,
  // Video
  @JsonValue('video/mp4')
  videoMp4,
  @JsonValue('video/avi')
  videoAvi,
  @JsonValue('video/mpeg')
  videoMpeg,
  @JsonValue('video/quicktime')
  videoQuicktime,
  // Audio
  @JsonValue('audio/mpeg')
  audioMpeg,
  @JsonValue('audio/wav')
  audioWav,
  @JsonValue('audio/ogg')
  audioOgg,
  // Archive
  @JsonValue('application/zip')
  applicationZip,
  @JsonValue('application/x-rar-compressed')
  applicationXRarCompressed,
  @JsonValue('application/tar')
  applicationTar,
  // Other
  @JsonValue('application/octet-stream')
  applicationOctetStream,
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
      case MediaType.imageGif:
        return 'image/gif';
      case MediaType.imageSvgXml:
        return 'image/svg+xml';
      case MediaType.applicationPdf:
        return 'application/pdf';
      case MediaType.applicationMsword:
        return 'application/msword';
      case MediaType.applicationVndOpenXMLFormatsWord:
        return 'application/vnd.openxmlformats-officedocument.wordprocessingml.document';
      case MediaType.applicationVndMsExcel:
        return 'application/vnd.ms-excel';
      case MediaType.applicationVndOpenXMLFormatsExcel:
        return 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
      case MediaType.videoMp4:
        return 'video/mp4';
      case MediaType.videoAvi:
        return 'video/avi';
      case MediaType.videoMpeg:
        return 'video/mpeg';
      case MediaType.videoQuicktime:
        return 'video/quicktime';
      case MediaType.audioMpeg:
        return 'audio/mpeg';
      case MediaType.audioWav:
        return 'audio/wav';
      case MediaType.audioOgg:
        return 'audio/ogg';
      case MediaType.applicationZip:
        return 'application/zip';
      case MediaType.applicationXRarCompressed:
        return 'application/x-rar-compressed';
      case MediaType.applicationTar:
        return 'application/tar';
      case MediaType.applicationOctetStream:
        return 'application/octet-stream';
      case MediaType.textPlain:
        return 'text/plain';
    }
  }
}

extension MediaTypeXString on String {
  MediaType get toMediaType {
    switch (this) {
      case 'image/png':
        return MediaType.imagePng;
      case 'image/jpeg':
        return MediaType.imageJpeg;
      case 'image/jpg':
        return MediaType.imageJpg;
      case 'image/gif':
        return MediaType.imageGif;
      case 'image/svg+xml':
        return MediaType.imageSvgXml;
      case 'application/pdf':
        return MediaType.applicationPdf;
      case 'application/msword':
        return MediaType.applicationMsword;
      case 'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
        return MediaType.applicationVndOpenXMLFormatsWord;
      case 'application/vnd.ms-excel':
        return MediaType.applicationVndMsExcel;
      case 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
        return MediaType.applicationVndOpenXMLFormatsExcel;
      case 'video/mp4':
        return MediaType.videoMp4;
      case 'video/avi':
        return MediaType.videoAvi;
      case 'video/mpeg':
        return MediaType.videoMpeg;
      case 'video/quicktime':
        return MediaType.videoQuicktime;
      case 'audio/mpeg':
        return MediaType.audioMpeg;
      case 'audio/wav':
        return MediaType.audioWav;
      case 'audio/ogg':
        return MediaType.audioOgg;
      case 'application/zip':
        return MediaType.applicationZip;
      case 'application/x-rar-compressed':
        return MediaType.applicationXRarCompressed;
      case 'application/tar':
        return MediaType.applicationTar;
      case 'application/octet-stream':
        return MediaType.applicationOctetStream;
      case 'text/plain':
        return MediaType.textPlain;
      default:
        throw Exception('Unknown media type: $this');
    }
  }
}

extension MediaParentX on MediaParent {
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
      case MediaParent.user:
        return 'user';
    }
  }
}

extension MediaParentXString on String {
  MediaParent get toMediaParent {
    switch (this) {
      case 'club':
        return MediaParent.club;
      case 'program':
        return MediaParent.program;
      case 'exercise':
        return MediaParent.exercise;
      case 'exam':
        return MediaParent.exam;
      case 'question':
        return MediaParent.question;
      case 'user':
        return MediaParent.user;
      default:
        throw Exception('Unknown media parent: $this');
    }
  }
}
