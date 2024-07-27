import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GappedDivider extends StatelessWidget {
  const GappedDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 4.h),
        Divider(
          height: 6.h,
          color: context.theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
        ),
        SizedBox(height: 4.h),
      ],
    ) ;
  }
}