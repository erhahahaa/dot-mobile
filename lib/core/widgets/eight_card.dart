import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EightCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final ShapeBorder? shape;
  final double? elevation;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final double? colorOpacity;

  const EightCard({
    super.key,
    required this.child,
    this.margin,
    this.shape,
    this.elevation,
    this.color,
    this.padding,
    this.colorOpacity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin,
      shape: shape ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
      elevation: elevation ?? 0,
      color: context.theme.cardColor,
      child: Padding(
        padding: padding ?? EdgeInsets.all(8.w),
        child: child,
      ),
    );
  }
}
