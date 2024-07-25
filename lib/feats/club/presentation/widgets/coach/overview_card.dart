import 'package:dot_coaching/core/widgets/widgets.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OverviewCard extends StatelessWidget {
  final int clubsCount, membersCount, programsCount, examsCount;
  const OverviewCard({
    super.key,
    this.clubsCount = 0,
    this.membersCount = 0,
    this.programsCount = 0,
    this.examsCount = 0,
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
              H1Text(clubsCount.toString()),
              H5Text('Clubs'),
            ],
          ),
          Column(
            children: [
              H1Text(membersCount.toString()),
              H5Text('Members'),
            ],
          ),
          Column(
            children: [
              H1Text(programsCount.toString()),
              H5Text('Programs'),
            ],
          ),
          Column(
            children: [
              H1Text(examsCount.toString()),
              H5Text('Exams'),
            ],
          ),
        ],
      ),
    );
  }
}
