import 'package:isar/isar.dart';

part 'arrow_entity.g.dart';

@embedded
class ArrowEntity {
  final double startX;
  final double startY;
  final double endX;
  final double endY;
  final int hexColor;

  const ArrowEntity({
    this.startX = 0,
    this.startY = 0,
    this.endX = 0,
    this.endY = 0,
    this.hexColor = 0,
  });
}
