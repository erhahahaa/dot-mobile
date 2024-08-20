import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';

class TitleMedium extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final Color? color;
  final FontWeight? fontWeight;

  const TitleMedium(
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
          context.theme.textTheme.titleMedium?.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
    );
  }
}
