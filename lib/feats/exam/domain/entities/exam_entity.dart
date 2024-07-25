import 'package:dot_coaching/feats/feats.dart';
import 'package:isar/isar.dart';

part 'exam_entity.g.dart';

@collection
class ExamEntity {
  Id id = Isar.autoIncrement;
  int clubId;
  int? imageId;
  String title;
  String description;
  DateTime? dueAt;
  MediaEmbedEntity? media;
  DateTime? createdAt;
  DateTime? updatedAt;

  // n:1 relationship
  final club = IsarLink<ClubEntity>();
  // 1:n relationship
  final questions = IsarLinks<QuestionEntity>();

  ExamEntity({
    this.id = Isar.autoIncrement,
    this.clubId = 0,
    this.imageId,
    this.title = 'DOT Exam 0',
    this.description = 'DOT Exam 0 description',
    this.dueAt,
    this.media,
    this.createdAt,
    this.updatedAt,
  });
}
