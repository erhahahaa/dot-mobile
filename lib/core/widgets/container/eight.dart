import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EightContainer extends StatelessWidget {
  final EdgeInsetsGeometry? padding, margin;
  final Widget? child;
  const EightContainer({
    super.key,
    this.child,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.all(8.w),
      padding: padding ?? EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
