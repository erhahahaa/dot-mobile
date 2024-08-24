import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';

class ContainerWrapper extends StatelessWidget {
  final double? width, height;
  final EdgeInsetsGeometry? padding, margin;
  final BorderRadiusGeometry? borderRadius;
  final Widget? child;
  final Color? color;

  const ContainerWrapper({
    super.key,
    this.padding,
    this.margin,
    this.borderRadius,
    this.width,
    this.height,
    this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.all(8.w),
      margin: margin ?? EdgeInsets.all(8.w),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(8.r),
        color: color ?? context.moonColors?.hit.withOpacity(0.03),
      ),
      child: child,
    );
  }
}
