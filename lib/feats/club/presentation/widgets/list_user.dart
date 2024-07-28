import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListUser extends StatelessWidget {
  final List<UserModel> users;
  final int clubId;
  final EdgeInsetsGeometry? padding;

  const ListUser({
    super.key,
    required this.users,
    required this.clubId,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    if (users.isEmpty) {
      return Container(
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: theme.colorScheme.primaryContainer.withOpacity(0.1),
        ),
        child: Center(
          child: Text(
            context.str?.noUsersFound ?? 'No users found',
            style: theme.textTheme.bodyLarge,
          ),
        ),
      );
    }

    return Container(
      padding: padding ?? EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: theme.colorScheme.primaryContainer.withOpacity(0.1),
      ),
      child: ListView.builder(
        itemCount: users.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final user = users[index];
          return UserContainer(
            user: user,
            clubId: clubId,
            withPopUp: false,
          );
        },
      ),
    );
  }
}
