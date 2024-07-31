import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EightContainer extends StatelessWidget {
  final EdgeInsetsGeometry? padding, margin;
  final Widget? child;
  final double? height, width;

  const EightContainer({
    super.key,
    this.child,
    this.padding,
    this.margin,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.all(8.w),
      padding: padding ?? EdgeInsets.all(8.w),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: context.theme.colorScheme.primaryContainer.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
