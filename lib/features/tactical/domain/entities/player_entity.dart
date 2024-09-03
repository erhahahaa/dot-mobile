import 'package:isar/isar.dart';

part 'player_entity.g.dart';

@embedded
class PlayerEntity {
  final String alias;
  final int number;
  final int team;
  final int hexColor;
  final double x;
  final double y;

  const PlayerEntity({
    this.alias = 'folks',
    this.number = 0,
    this.team = 0,
    this.hexColor = 0,
    this.x = 0,
    this.y = 0,
  });
}
