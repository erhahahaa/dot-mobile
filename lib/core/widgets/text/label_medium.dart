import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';

class LabelMedium extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  const LabelMedium(
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
      text ?? 'Unassigned',
      style: style ??
          context.moonTypography?.heading.text12.copyWith(
            color: color,
            fontWeight: fontWeight ?? FontWeight.w500,
            fontSize: fontSize ?? 12.sp,
            letterSpacing: 0.5.sp,
          ),
    );
  }
}
