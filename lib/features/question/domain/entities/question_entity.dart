import 'package:dot_coaching/features/feature.dart';
import 'package:isar/isar.dart';

part 'question_entity.g.dart';

enum QuestionType {
  text,
  numeric;

  String get value {
    switch (this) {
      case QuestionType.numeric:
        return 'numeric';
      case QuestionType.text:
      default:
        return 'text';
    }
  }

  static QuestionType fromString(String str) {
    switch (str) {
      case 'numeric' || 'Numeric':
        return QuestionType.numeric;
      case 'text' || 'Text':
      default:
        return QuestionType.text;
    }
  }
}

@Collection(accessor: 'questions')
class QuestionEntity {
  final int id;
  int examId;
  int? mediaId;
  @enumValue
  QuestionType type;
  String question;
  List<QuestionOptionEntity> options;
  int order;
  MediaEmbedEntity? media;
  DateTime? createdAt;
  DateTime? updatedAt;

  QuestionEntity({
    this.id = 0,
    this.examId = 0,
    this.mediaId,
    this.type = QuestionType.text,
    this.question = 'Mention 5 basic Movement',
    this.options = const [],
    this.order = 0,
    this.media,
    this.createdAt,
    this.updatedAt,
  });
}

@embedded
class QuestionOptionEntity {
  int order;
  String text;
  QuestionOptionEntity({
    this.order = 0,
    this.text = 'Option 1',
  });
}
