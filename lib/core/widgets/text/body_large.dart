import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';

class BodyLarge extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final Color? color;
  final FontWeight? fontWeight;

  const BodyLarge(
    this.text, {
    super.key,
    this.style,
    this.color,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? 'Unassigned',
      style: style ??
          context.theme.textTheme.bodyLarge?.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}
