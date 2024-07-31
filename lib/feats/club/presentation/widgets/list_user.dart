import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListUser extends StatelessWidget {
  final List<UserModel> users;
  final int clubId;
  final EdgeInsetsGeometry? padding;
  final bool showUsername, isLoading;

  const ListUser({
    super.key,
    required this.users,
    required this.clubId,
    this.padding,
    this.showUsername = false,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    if (isLoading) {
      final fakeUser = List.generate(8, (index) => UserModel.fake()).toList();

      return EightContainer(
        height: 550.h,
        child: Skeletonizer(
          child: ListView.builder(
            itemCount: fakeUser.length,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return UserContainer(
                user: fakeUser[index],
                clubId: clubId,
                withPopUp: false,
                showUsername: showUsername,
              );
            },
          ),
        ),
      );
    }

    if (users.isEmpty) {
      return EightContainer(
        child: Center(
          child: Text(
            context.str?.noUsersFound ?? 'No users found',
            style: theme.textTheme.bodyLarge,
          ),
        ),
      );
    }

    return EightContainer(
      height: 550.h,
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
            showUsername: showUsername,
          );
        },
      ),
    );
  }
}
