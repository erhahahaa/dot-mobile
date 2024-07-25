import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';

class H1Text extends StatelessWidget {
  final String text;
  const H1Text(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.theme.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
