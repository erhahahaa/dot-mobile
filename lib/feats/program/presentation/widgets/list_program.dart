import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/exts/exts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListProgram extends StatelessWidget {
  final List<ProgramModel> programs;
  final EdgeInsetsGeometry? padding;
  final bool isCoach;
  const ListProgram({
    super.key,
    required this.programs,
    this.padding,
    this.isCoach = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

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
        itemCount: programs.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final program = programs[index];
          return ProgramContainer(program: program, isCoach: isCoach);
        },
      ),
    );
  }
}
