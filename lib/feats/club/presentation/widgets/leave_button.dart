import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeaveButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final int clubId;

  const LeaveButton({
    super.key,
    required this.clubId,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: context.theme.colorScheme.error,
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(
            Icons.logout,
            color: context.theme.colorScheme.onError,
          ),
          SizedBox(width: 8.w),
          Text(
            context.str?.leave ?? 'Leave',
            style: context.theme.textTheme.titleMedium?.copyWith(
              color: context.theme.colorScheme.onError,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 16.sp,
            color: context.theme.colorScheme.onError,
          ),
        ],
      ),
    );
  }
}
