import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManageButton extends StatelessWidget {
  final Widget icon;
  final String text;
  final VoidCallback onTap;
  const ManageButton(
      {super.key, required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.w),
        width: 95.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: context.theme.colorScheme.primaryContainer.withOpacity(0.1),
        ),
        child: Column(
          children: [
            icon,
            SizedBox(height: 4.h),
            Text(
              text,
              style: context.theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
