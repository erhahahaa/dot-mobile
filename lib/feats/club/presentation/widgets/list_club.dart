import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListClub extends StatelessWidget {
  final List<ClubModel> clubs;
  final EdgeInsetsGeometry? padding;
  final bool isCoach;
  const ListClub({
    super.key,
    required this.clubs,
    this.padding,
    this.isCoach = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    if (clubs.isEmpty) {
      return Container(
        padding: padding ?? EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: context.containerColor(0.1),
        ),
        child: Center(
          child: Text(
            'No clubs found',
            style: theme.textTheme.bodyLarge,
          ),
        ),
      );
    }

    return Container(
      padding: padding ?? EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: context.containerColor(0.05),
      ),
      child: ListView.builder(
        itemCount: clubs.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final club = clubs[index];
          return ClubContainer(club: club, isCoach: isCoach);
        },
      ),
    );
  }
}
