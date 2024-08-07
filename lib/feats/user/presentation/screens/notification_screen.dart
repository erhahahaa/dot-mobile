import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        return Parent(
          body: RoundedTopBackground(
            showBackButton: false,
            title: 'Notification',
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            suffix: InkWell(
              onTap: () => context.read<UserCubit>().clearNotification(),
              child: Padding(
                padding: EdgeInsets.all(4.w),
                child: const Icon(Icons.delete, color: Colors.redAccent),
              ),
            ),
            child: RefreshIndicator(
              onRefresh: () => context.read<UserCubit>().getNotification(),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: ListNotification(
                  notifications: state.notifications,
                  isLoading: state.state == BaseState.loading,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
