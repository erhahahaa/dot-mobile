import 'package:isar/isar.dart';

part 'club.g.dart';

enum SportType {
  volleyBall,
  basketBall,
  soccer,
}

@collection
class ClubEntity {
  Id id = Isar.autoIncrement;
  int? creatorId;
  String? name;
  String? description;
  @enumerated
  SportType type;
  String? image;
  int memberCount;
  DateTime? createdAt;

  ClubEntity({
    this.id = Isar.autoIncrement,
    this.creatorId,
    this.name,
    this.description,
    this.type = SportType.basketBall,
    this.image,
    this.memberCount = 0,
    this.createdAt,
  });
}
