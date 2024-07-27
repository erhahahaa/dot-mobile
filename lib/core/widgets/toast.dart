import 'package:dot_coaching/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Toast extends StatelessWidget {
  final String title;
  final String message;
  final IconData icon;
  final Color color;
  final ThemeData theme;
  final bool isDarkMode;

  const Toast({
    super.key,
    required this.title,
    required this.message,
    required this.icon,
    required this.color,
    required this.theme,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      margin: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(8.w),
        border: Border.all(
          color: color,
          width: 3.w,
        ),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 8.w,
            spreadRadius: 2.w,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
            size: 24.sp,
          ),
          SizedBox(width: 8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              H2Text(
                title,
                color: theme.extension<AppColors>()?.text ?? Colors.black,
              ),
              const SizedBox(height: 4),
              H6Text(
                message,
                color: theme.extension<AppColors>()?.text ?? Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
