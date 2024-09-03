import 'package:dot_coaching/features/feature.dart';
import 'package:isar/isar.dart';

part 'tactical_entity.g.dart';

@Collection(accessor: 'tacticals')
class TacticalEntity {
  final int id;
  final int clubId;
  final int? mediaId;
  final String name;
  final String? description;
  final TacticalBoardEntity board;
  final TacticalStrategicEntity? strategic;
  final bool isLive;
  final MediaEmbedEntity? media;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const TacticalEntity({
    this.id = 0,
    this.clubId = 0,
    this.mediaId,
    this.name = 'SBY Tactical exhibition',
    this.description,
    this.board = const TacticalBoardEntity(),
    this.strategic,
    this.isLive = false,
    this.media,
    this.createdAt,
    this.updatedAt,
  });
}

@embedded
class TacticalBoardEntity {
  final double width, height;

  const TacticalBoardEntity({
    this.width = 0,
    this.height = 0,
  });
}

@embedded
class TacticalStrategicEntity {
  final List<PlayerEntity> players;
  final List<ArrowEntity> arrows;

  const TacticalStrategicEntity({
    this.players = const [],
    this.arrows = const [],
  });
}
