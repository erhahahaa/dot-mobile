import 'package:isar/isar.dart';

part 'club.g.dart';

@collection
class ClubEntity {
  Id id = Isar.autoIncrement;
  int? creatorId;
  String? name;
  String? description;
  String? image;
  DateTime? createdAt;

  ClubEntity({
    this.id = Isar.autoIncrement,
    this.creatorId,
    this.name,
    this.description,
    this.image,
    this.createdAt,
  });
}
