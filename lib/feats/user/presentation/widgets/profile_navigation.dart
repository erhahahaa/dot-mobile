import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileNavigationButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final IconData icon;

  const ProfileNavigationButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.containerColor(0.05),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            SizedBox(width: 8.w),
            Icon(
              icon,
              color: context.theme.colorScheme.primary,
              size: 16.sp,
            ),
            SizedBox(width: 8.w),
            Container(
              width: 1,
              height: 24.h,
              color:
                  context.theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
            ),
            TextButton(
              onPressed: onPressed,
              child: H5Text(text),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: context.theme.colorScheme.primary,
              size: 16.sp,
            ),
            SizedBox(width: 8.w),
          ],
        ),
      ),
    );
  }
}
