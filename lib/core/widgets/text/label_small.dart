import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';

class LabelSmall extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  const LabelSmall(
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
          context.moonTypography?.heading.text10.copyWith(
            color: color,
            fontWeight: fontWeight ?? FontWeight.w500,
            fontSize: fontSize ?? 11.sp,
            letterSpacing: 0.5.sp,
          ),
    );
  }
}
