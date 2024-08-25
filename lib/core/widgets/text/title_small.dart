import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';

class TitleSmall extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  const TitleSmall(
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
          context.moonTypography?.heading.text14.copyWith(
            color: color,
            fontWeight: fontWeight ?? FontWeight.w500,
            fontSize: fontSize ?? 14.sp,
            letterSpacing: 0.1.sp,
          ),
    );
  }
}
