import 'package:isar/isar.dart';

part 'program.g.dart';

@collection
class ProgramEntity {
  Id id = Isar.autoIncrement;
  int? clubId;
  String? sportType;
  String? name;
  DateTime? createdAt;
  DateTime? updatedAt;

  ProgramEntity({
    this.id = Isar.autoIncrement,
    this.clubId,
    this.sportType,
    this.name,
    this.createdAt,
    this.updatedAt,
  });
}
