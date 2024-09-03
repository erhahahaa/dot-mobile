import 'package:dot_coaching/features/feature.dart';
import 'package:isar/isar.dart';

part 'club_entity.g.dart';

enum SportType {
  volleyBall,
  basketBall,
  soccer,
  futsal,
  handBall,
}

extension SportTypeX on SportType {
  String get name {
    switch (this) {
      case SportType.volleyBall:
        return 'Volleyball';
      case SportType.basketBall:
        return 'Basketball';
      case SportType.soccer:
        return 'Soccer';
      case SportType.futsal:
        return 'Futsal';
      case SportType.handBall:
        return 'Handball';
    }
  }

  String get value {
    switch (this) {
      case SportType.volleyBall:
        return 'volleyBall';
      case SportType.basketBall:
        return 'basketBall';
      case SportType.soccer:
        return 'soccer';
      case SportType.futsal:
        return 'futsal';
      case SportType.handBall:
        return 'handBall';
    }
  }
}

@Collection(accessor: 'clubs')
class ClubEntity {
  final int id;
  final int? creatorId;
  final int? imageId;
  final String? name;
  final String? description;
  @enumValue
  final SportType type;
  final MediaEmbedEntity? media;
  final int memberCount, programCount, examCount, tacticalCount;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ClubEntity({
    this.id = 0,
    this.creatorId,
    this.imageId,
    this.name,
    this.description,
    this.type = SportType.basketBall,
    this.media,
    this.memberCount = 0,
    this.programCount = 0,
    this.examCount = 0,
    this.tacticalCount = 0,
    this.createdAt,
    this.updatedAt,
  });
}
