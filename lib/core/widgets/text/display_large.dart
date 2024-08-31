import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';

class DisplayLarge extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  const DisplayLarge(
    this.text, {
    super.key,
    this.style,
    this.color,
    this.fontWeight,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? 'An error occurred',
      style: style ??
          context.moonTypography?.heading.text56.copyWith(
            color: color,
            fontWeight: fontWeight ?? FontWeight.w400,
            fontSize: fontSize ?? 56.sp,
          ),
    );
  }
}
