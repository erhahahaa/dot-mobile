import 'package:dot_coaching/features/feature.dart';
import 'package:isar/isar.dart';

part 'exam_entity.g.dart';

@Collection(accessor: 'exams')
class ExamEntity {
  final int id;
  final int clubId;
  final int? imageId;
  final String title;
  final String? description;
  final DateTime? dueAt;
  final MediaEmbedEntity? media;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ExamEntity({
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
