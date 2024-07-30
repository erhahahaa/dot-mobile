import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LeaveButton extends StatelessWidget {
  final int clubId;
  const LeaveButton({super.key, required this.clubId});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ClubCubit, ClubState>(
      listenWhen: (p, c) => p.state != c.state,
      listener: (context, state) {
        if (state.state == BaseState.success) {
          ToastModel(
            message: context.str?.leaveClubSuccess,
            type: ToastType.success,
          ).fire(context);
          context.pop();
        }
        if (state.state == BaseState.failure) {
          ToastModel(
            message: context.str?.failedLeaveClub,
            type: ToastType.error,
          ).fire(context);
          context.pop();
        }
      },
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: context.theme.colorScheme.error,
        ),
        onPressed: () {
          context.read<ClubCubit>().leave(clubId);
        },
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
      ),
    );
  }
}
