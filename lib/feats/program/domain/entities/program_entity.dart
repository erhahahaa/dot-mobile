import 'package:dot_coaching/feats/feats.dart';
import 'package:isar/isar.dart';

part 'program_entity.g.dart';

@collection
class ProgramEntity {
  Id id = Isar.autoIncrement;
  int clubId;
  int? imageId;
  String name;
  DateTime? startDate;
  DateTime? endDate;
  MediaEmbedEntity? media;
  DateTime? createdAt;
  DateTime? updatedAt;

  // 1:n relationship
  final exercises = IsarLinks<ProgramExerciseEntity>();

  ProgramEntity({
    this.id = Isar.autoIncrement,
    this.clubId = 0,
    this.imageId,
    this.name = 'DOT Sport',
    this.startDate,
    this.endDate,
    this.media,
    this.createdAt,
    this.updatedAt,
  });
}
