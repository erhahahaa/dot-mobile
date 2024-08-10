import 'package:dot_coaching/feats/feats.dart';
import 'package:isar/isar.dart';

part 'question_entity.g.dart';

enum QuestionType { text, numeric }

@collection
class QuestionEntity {
  Id id = Isar.autoIncrement;
  int examId;
  int? mediaId;
  @enumerated
  QuestionType type;
  String question;
  List<QuestionOptionEntity> options;
  int order;
  MediaEmbedEntity? media;
  DateTime? createdAt;
  DateTime? updatedAt;

  // n:1 relationship
  final exam = IsarLink<ExamEntity>();

  QuestionEntity({
    this.id = Isar.autoIncrement,
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

// enum QuestionOptionType { text, number }

@embedded
class QuestionOptionEntity {
  int order;
  String text;
  // @enumerated
  // QuestionOptionType type;

  QuestionOptionEntity({
    this.order = 0,
    this.text = 'Option 1',
    // this.type = QuestionOptionType.text,
  });
}
