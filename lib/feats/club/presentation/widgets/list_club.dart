import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListClub extends StatelessWidget {
  final List<ClubModel> clubs;
  final EdgeInsetsGeometry? padding;
  final bool isCoach;
  final bool isLoading;

  const ListClub({
    super.key,
    required this.clubs,
    this.padding,
    this.isCoach = false,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: context.containerColor(0.05),
      ),
      child: _buildListClub(context),
    );
  }

  Widget _buildListClub(BuildContext context) {
    if (isLoading) {
      final fakeClub = List.generate(9, (index) => ClubModel.fake()).toList();

      return Skeletonizer(
          child: ListView.builder(
        itemCount: fakeClub.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return ClubContainer(club: fakeClub[index], isCoach: isCoach);
        },
      ));
    }

    if (clubs.isEmpty) {
      return EightContainer(
        child: Center(
          child: Text(
            context.str?.noClubsFound ?? 'No clubs found',
            textAlign: TextAlign.center,
            style: context.theme.textTheme.bodyLarge,
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: clubs.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final club = clubs[index];
        return ClubContainer(club: club, isCoach: isCoach);
      },
    );
  }
}
