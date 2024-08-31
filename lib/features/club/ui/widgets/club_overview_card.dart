import 'package:dot_coaching/core/widgets/widgets.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClubOverviewCard extends StatelessWidget {
  final int? tacticalCount, membersCount, programsCount, examsCount;
  const ClubOverviewCard({
    super.key,
    this.tacticalCount = 0,
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
              TitleSmall(membersCount.toString()),
              BodySmall(
                context.str?.members ?? 'Members',
              ),
            ],
          ),
          Column(
            children: [
              TitleSmall(programsCount.toString()),
              BodySmall(
                context.str?.programs ?? 'Programs',
              ),
            ],
          ),
          Column(
            children: [
              TitleSmall(tacticalCount.toString()),
              BodySmall(
                context.str?.tactical ?? 'Tactical',
              ),
            ],
          ),
          Column(
            children: [
              TitleSmall(examsCount.toString()),
              BodySmall(
                context.str?.exams ?? 'Exams',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
