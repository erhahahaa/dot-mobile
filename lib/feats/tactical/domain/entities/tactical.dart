import 'package:isar/isar.dart';

part 'tactical.g.dart';

@collection
class TacticalEntity {
  Id id = Isar.autoIncrement;
  int? clubId;
  String? sportType;
  String? name;
  String? description;
  DateTime? createdAt;
  DateTime? updatedAt;

  TacticalEntity({
    this.id = Isar.autoIncrement,
    this.clubId,
    this.sportType,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });
}
