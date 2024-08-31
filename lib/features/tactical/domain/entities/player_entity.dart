import 'package:isar/isar.dart';

part 'player_entity.g.dart';

@embedded
class PlayerEntity {
  String alias;
  int number;
  int team;
  int hexColor;
  double x;
  double y;

  PlayerEntity({
    this.alias = 'folks',
    this.number = 0,
    this.team = 0,
    this.hexColor = 0,
    this.x = 0,
    this.y = 0,
  });
}
