import 'package:dot_coaching/feats/feats.dart';
import 'package:isar/isar.dart';

part 'club.g.dart';

enum SportType {
  volleyBall,
  basketBall,
  soccer,
  miniSoccer,
  handBall,
}

@collection
class ClubEntity {
  Id id = Isar.autoIncrement;
  int? creatorId;
  int? imageId;
  String? name;
  String? description;
  @enumerated
  SportType type;
  String? image;
  int memberCount;
  DateTime? createdAt;
  DateTime? updatedAt;

  // 1:n relationship
  final members = IsarLinks<UserEntity>();
  final programs = IsarLinks<ProgramEntity>();
  final tacticals = IsarLinks<TacticalEntity>();
  final exams = IsarLinks<ExamEntity>();

  ClubEntity({
    this.id = Isar.autoIncrement,
    this.creatorId,
    this.imageId,
    this.name,
    this.description,
    this.type = SportType.basketBall,
    this.image,
    this.memberCount = 0,
    this.createdAt,
    this.updatedAt,
  });
}
