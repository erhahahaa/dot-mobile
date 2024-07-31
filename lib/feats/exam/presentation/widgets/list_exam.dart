import 'package:dot_coaching/feats/exam/presentation/widgets/exam_container.dart';
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
    return Container(
      padding: padding ?? EdgeInsets.all(8.w),
      height: 380.h,
      margin: EdgeInsets.only(bottom: 96.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: context.containerColor(0.05),
      ),
      child: _buildListExam(context),
    );
  }

  Widget _buildListExam(BuildContext context) {
    if (isLoading) {
      final exam = List.generate(3, (index) => ExamModel()).toList();

      return Skeletonizer(
          child: ListView.builder(
        itemCount: exam.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return ExamContainer(
            exam: exam[index],
            isCoach: isCoach,
            club: club,
          );
        },
      ));
    }

    if (exams.isEmpty) {
      return Container(
        padding: padding ?? EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: context.containerColor(0.1),
        ),
        child: Center(
          child: Text(
            'No exams found',
            style: context.theme.textTheme.bodyLarge,
          ),
        ),
      );
    }

    return ListView.builder(
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
