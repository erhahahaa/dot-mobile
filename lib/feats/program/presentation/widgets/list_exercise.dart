import 'package:dot_coaching/core/core.dart';
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
    return EightContainer(
      padding: padding ?? EdgeInsets.all(8.w),
      margin: EdgeInsets.only(top: 8.w),
      child: _buildListExerises(context),
    );
  }

  Widget _buildListExerises(BuildContext context) {
    if (isLoading) {
      final fakeExercises =
          List.generate(3, (index) => ProgramExerciseModel.fake()).toList();

      return Skeletonizer(
        child: Column(
          children:
              fakeExercises.map((e) => ExerciseContainer(exercise: e)).toList(),
        ),
      );
    }

    if (exercises.isEmpty) {
      return EightContainer(
        child: Center(
          child: Text(
            'No programs found',
            style: context.theme.textTheme.bodyLarge,
          ),
        ),
      );
    }

    return Column(
        children: exercises
            .map<Widget>((e) => ExerciseContainer(exercise: e))
            .toList());
  }
}
