import 'package:dot_coaching/feats/feats.dart';
import 'package:isar/isar.dart';

part 'exercise_entity.g.dart';

@collection
class ProgramExerciseEntity {
  Id id = Isar.autoIncrement;
  int programId;
  int? mediaId;
  int order;
  String name;
  String? description;
  int repetition;
  int sets;
  int rest;
  MediaEmbedEntity? media;
  DateTime? createdAt;
  DateTime? updatedAt;

  // n:1 relationship
  final program = IsarLink<ProgramEntity>();

  ProgramExerciseEntity({
    this.id = Isar.autoIncrement,
    this.programId = 0,
    this.mediaId,
    this.order = 0,
    this.name = 'DOT Exercise 0',
    this.description,
    this.repetition = 1,
    this.sets = 1,
    this.rest = 0,
    this.media,
    this.createdAt,
    this.updatedAt,
  });
}
