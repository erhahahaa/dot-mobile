import 'package:isar/isar.dart';

part 'exam.g.dart';

@collection
class ExamEntity {
  Id id = Isar.autoIncrement;
  int? clubId;
  String? title;
  String? description;
  DateTime? dueAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  ExamEntity({
    this.id = Isar.autoIncrement,
    this.clubId,
    this.title,
    this.description,
    this.dueAt,
    this.createdAt,
    this.updatedAt,
  });
}
