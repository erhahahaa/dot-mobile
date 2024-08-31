import 'package:dot_coaching/utils/extensions/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormLabel extends StatelessWidget {
  final String? text;
  final EdgeInsets? padding;

  const FormLabel(
    this.text, {
    super.key,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(left: 12.w, bottom: 6.h),
      child: Text(
        text ?? 'Unassigned label',
        style: context.theme.textTheme.bodyMedium,
      ),
    );
  }
}
