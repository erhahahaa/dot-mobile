import 'package:isar/isar.dart';

part 'question.g.dart';

enum QuestionType { multipleChoice, trueFalse, shortAnswer, essay }

@collection
class QuestionEntity {
  Id id = Isar.autoIncrement;
  int? clubId;
  int? examId;
  @enumerated
  QuestionType type;
  String? content;
  String? answer;
  DateTime? createdAt;
  DateTime? updatedAt;

  QuestionEntity({
    this.id = Isar.autoIncrement,
    this.clubId,
    this.examId,
    this.type = QuestionType.essay,
    this.content,
    this.answer,
    this.createdAt,
    this.updatedAt,
  });
}
