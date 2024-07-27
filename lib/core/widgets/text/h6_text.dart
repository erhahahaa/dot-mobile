import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';

class H6Text extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color? color;

  const H6Text(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.normal,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.theme.textTheme.bodySmall?.copyWith(
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
