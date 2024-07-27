import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListMember extends StatelessWidget {
  final List<UserModel> members;
  final int clubId;
  final EdgeInsetsGeometry? padding;

  const ListMember({
    super.key,
    required this.members,
    required this.clubId,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    if (members.isEmpty) {
      return Container(
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: theme.colorScheme.primaryContainer.withOpacity(0.1),
        ),
        child: Center(
          child: Text(
            'No members found',
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
        itemCount: members.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final user = members[index];
          return UserContainer(user: user, clubId: clubId);
        },
      ),
    );
  }
}
