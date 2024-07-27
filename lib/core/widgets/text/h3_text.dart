import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';

class H3Text extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color? color;

  const H3Text(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.bold,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.theme.textTheme.titleSmall?.copyWith(
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
