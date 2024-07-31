import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/exts/exts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListExam extends StatelessWidget {
  final List<ExamModel> exams;
  final EdgeInsetsGeometry? padding;
  final bool isCoach;
  final bool isLoading;
  final ClubModel club;

  const ListExam({
    super.key,
    required this.exams,
    this.padding,
    this.isCoach = false,
    required this.isLoading,
    required this.club,
  });

  @override
  Widget build(BuildContext context) {
    return EightContainer(
      child: _buildListExam(context),
    );
  }

  Widget _buildListExam(BuildContext context) {
    if (isLoading) {
      final fakeExam = List.generate(9, (index) => ExamModel.fake()).toList();

      return Skeletonizer(
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: fakeExam.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return ExamContainer(
              exam: fakeExam[index],
              isCoach: isCoach,
              club: club,
            );
          },
        ),
      );
    }

    if (exams.isEmpty) {
      return Container(
        padding: padding ?? EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: context.containerColor(0.05),
        ),
        child: Center(
          child: Text(
            context.str?.emptyExam ?? 'Exam is empty',
            style: context.theme.textTheme.bodyLarge,
          ),
        ),
      );
    }

    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: exams.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return ExamContainer(
          exam: exams[index],
          isCoach: isCoach,
          club: club,
        );
      },
    );
  }
}
