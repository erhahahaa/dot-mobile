import 'package:isar/isar.dart';

part 'arrow_entity.g.dart';

@embedded
class ArrowEntity {
  double startX;
  double startY;
  double endX;
  double endY;
  int hexColor;

  ArrowEntity({
    this.startX = 0,
    this.startY = 0,
    this.endX = 0,
    this.endY = 0,
    this.hexColor = 0,
  });
}
