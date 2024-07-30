import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/exts/exts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListProgram extends StatelessWidget {
  final List<ProgramModel> programs;
  final EdgeInsetsGeometry? padding;
  final bool isCoach;
  final bool isLoading;
  final ClubModel club;

  const ListProgram({
    super.key,
    required this.programs,
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
      child: _buildListProgram(context),
    );
  }

  Widget _buildListProgram(BuildContext context) {
    if (isLoading) {
      final fakeProgram =
          List.generate(3, (index) => ProgramModel.fake()).toList();

      return Skeletonizer(
          child: ListView.builder(
        itemCount: fakeProgram.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return ProgramContainer(
            program: fakeProgram[index],
            isCoach: isCoach,
            club: club,
          );
        },
      ));
    }

    if (programs.isEmpty) {
      return Container(
        padding: padding ?? EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: context.containerColor(0.1),
        ),
        child: Center(
          child: Text(
            'No programs found',
            style: context.theme.textTheme.bodyLarge,
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: programs.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return ProgramContainer(
          program: programs[index],
          isCoach: isCoach,
          club: club,
        );
      },
    );
  }
}
