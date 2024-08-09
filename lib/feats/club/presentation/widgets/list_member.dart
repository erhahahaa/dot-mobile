import 'package:dot_coaching/core/widgets/container/eight.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListMember extends StatelessWidget {
  final List<UserModel> members;
  final int clubId;
  final EdgeInsetsGeometry? padding;
  final bool isLoading;

  const ListMember({
    super.key,
    required this.members,
    required this.clubId,
    this.padding,
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
                isCoach: fakeUser[index].role == UserRole.coach,
              );
            },
          ),
        ),
      );
    }

    if (members.isEmpty) {
      return EightContainer(
        child: Center(
          child: Text(
            context.str?.noMembersFound ?? 'No members found',
            style: theme.textTheme.bodyLarge,
          ),
        ),
      );
    }
    return EightContainer(
      child: ListView.builder(
        itemCount: members.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final user = members[index];
          return UserContainer(
            user: user,
            clubId: clubId,
            withPopUp: true,
            isCoach: members[index].role == UserRole.coach,
          );
        },
      ),
    );
  }
}
