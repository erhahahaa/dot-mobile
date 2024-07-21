import 'package:dot_coaching/feats/feats.dart';
import 'package:isar/isar.dart';

part 'question.g.dart';

enum QuestionType { multipleChoice, trueFalse, shortAnswer, essay }

@collection
class QuestionEntity {
  Id id = Isar.autoIncrement;
  int examId;
  int? mediaId;
  @enumerated
  QuestionType type;
  String content;
  String answer;
  DateTime? createdAt;
  DateTime? updatedAt;

  // n:1 relationship
  final exam = IsarLink<ExamEntity>();

  QuestionEntity({
    this.id = Isar.autoIncrement,
    this.examId = 0,
    this.mediaId,
    this.type = QuestionType.essay,
    this.content = 'Mention 5 basic Movement',
    this.answer = '',
    this.createdAt,
    this.updatedAt,
  });
}
