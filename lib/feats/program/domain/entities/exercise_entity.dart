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
  ProgramUnitValueEntity? repetition;
  ProgramUnitValueEntity? sets;
  ProgramUnitValueEntity? rest;
  ProgramUnitValueEntity? tempo;
  ProgramUnitValueEntity? intensity;
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
    this.repetition,
    this.sets,
    this.rest,
    this.tempo,
    this.intensity,
    this.media,
    this.createdAt,
    this.updatedAt,
  });
}

@embedded
class ProgramUnitValueEntity {
  String? unit;
  int value;

  ProgramUnitValueEntity({
    this.unit,
    this.value = 0,
  });
}
