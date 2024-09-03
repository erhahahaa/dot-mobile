import 'dart:math';

import 'package:dot_coaching/features/feature.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'arrow_model.freezed.dart';
part 'arrow_model.g.dart';

@freezed
class ArrowModel extends ArrowEntity with _$ArrowModel {
  factory ArrowModel({
    @Default(0) double startX,
    @Default(0) double startY,
    @Default(0) double endX,
    @Default(0) double endY,
    @Default(0xFFC90508) int hexColor,
  }) = _ArrowModel;

  ArrowModel._();

  factory ArrowModel.fromJson(Map<String, dynamic> json) =>
      _$ArrowModelFromJson(json);

  static ArrowModel fromEntity(ArrowEntity entity) {
    return ArrowModel(
      startX: entity.startX,
      startY: entity.startY,
      endX: entity.endX,
      endY: entity.endY,
      hexColor: entity.hexColor,
    );
  }

  ArrowEntity toEntity() {
    return ArrowEntity(
      startX: startX,
      startY: startY,
      endX: endX,
      endY: endY,
      hexColor: hexColor,
    );
  }
}

class ArrowPainter extends CustomPainter {
  final ArrowModel arrow;
  Color color;

  ArrowPainter({required this.arrow, this.color = Colors.black});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

    const arrowHeadSize = 10.0;
    const arrowHeadAngle = 45.0;

    final start = Offset(arrow.startX, arrow.startY);
    final end = Offset(arrow.endX, arrow.endY);

    canvas.drawLine(start, end, paint);

    final angle = (end - start).direction;
    final arrowHead1 = end.translate(
      arrowHeadSize * -cos(angle - arrowHeadAngle / 180 * pi),
      arrowHeadSize * -sin(angle - arrowHeadAngle / 180 * pi),
    );

    final arrowHead2 = end.translate(
      arrowHeadSize * -cos(angle + arrowHeadAngle / 180 * pi),
      arrowHeadSize * -sin(angle + arrowHeadAngle / 180 * pi),
    );

    final path = Path()
      ..moveTo(end.dx, end.dy)
      ..lineTo(arrowHead1.dx, arrowHead1.dy)
      ..lineTo(arrowHead2.dx, arrowHead2.dy)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
