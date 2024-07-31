import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditButton extends StatelessWidget {
  final ClubModel club;
  final VoidCallback? onPressed;

  const EditButton({
    super.key,
    required this.club,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(
            Icons.edit,
            color: context.theme.colorScheme.onPrimary,
          ),
          SizedBox(width: 8.w),
          Text(
            context.str?.edit ?? 'Edit',
            style: context.theme.textTheme.titleMedium?.copyWith(
              color: context.theme.colorScheme.onPrimary,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 16.sp,
            color: context.theme.colorScheme.onPrimary,
          ),
        ],
      ),
    );
  }
}
