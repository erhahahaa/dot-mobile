import 'package:dot_coaching/core/widgets/text/h1_text.dart';
import 'package:dot_coaching/core/widgets/text/h5_text.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemberOverviewCard extends StatelessWidget {
  final int totalMembers, totalAthletes, totalCoaches;
  const MemberOverviewCard({
    super.key,
    this.totalMembers = 0,
    this.totalAthletes = 0,
    this.totalCoaches = 0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: theme.colorScheme.primaryContainer.withOpacity(0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              H1Text(totalMembers.toString()),
              const H5Text('Members'),
            ],
          ),
          Column(
            children: [
              H1Text(totalAthletes.toString()),
              const H5Text('Athletes'),
            ],
          ),
          Column(
            children: [
              H1Text(totalCoaches.toString()),
              const H5Text('Coaches'),
            ],
          ),
        ],
      ),
    );
  }
}
