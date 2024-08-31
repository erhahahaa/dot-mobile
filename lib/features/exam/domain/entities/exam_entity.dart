import 'package:dot_coaching/features/feature.dart';
import 'package:isar/isar.dart';

part 'exam_entity.g.dart';

@Collection(accessor: 'exams')
class ExamEntity {
  final int id;
  int clubId;
  int? imageId;
  String title;
  String? description;
  DateTime? dueAt;
  MediaEmbedEntity? media;
  DateTime? createdAt;
  DateTime? updatedAt;

  ExamEntity({
    this.id = 0,
    this.clubId = 0,
    this.imageId,
    this.title = 'DOT Exam 0',
    this.description,
    this.dueAt,
    this.media,
    this.createdAt,
    this.updatedAt,
  });
}
