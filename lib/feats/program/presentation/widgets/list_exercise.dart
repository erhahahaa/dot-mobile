import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/exts/exts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListExercise extends StatelessWidget {
  final List<ProgramExerciseModel> exercises;
  final EdgeInsetsGeometry? padding;
  final bool isLoading;

  const ListExercise({
    super.key,
    required this.exercises,
    this.padding,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.all(8.w),
      height: 460.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: context.containerColor(0.05),
      ),
      child: _buildListExerises(context),
    );
  }

  Widget _buildListExerises(BuildContext context) {
    if (isLoading) {
      final fakeExercises =
          List.generate(3, (index) => ProgramExerciseModel.fake()).toList();

      return Skeletonizer(
          child: ListView.builder(
        itemCount: fakeExercises.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return ExerciseContainer(
            exercise: fakeExercises[index],
          );
        },
      ));
    }

    if (exercises.isEmpty) {
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
      itemCount: exercises.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return ExerciseContainer(
          exercise: exercises[index],
        );
      },
    );
  }
}
