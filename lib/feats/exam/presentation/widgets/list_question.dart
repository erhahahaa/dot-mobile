import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListQuestion extends StatelessWidget {
  final List<QuestionModel> questions;
  final EdgeInsetsGeometry? padding;
  final bool isLoading;

  const ListQuestion({
    super.key,
    required this.questions,
    this.padding,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return EightContainer(
      padding: padding ?? EdgeInsets.all(8.w),
      margin: EdgeInsets.only(top: 8.w),
      child: _buildListQuestions(context),
    );
  }

  Widget _buildListQuestions(BuildContext context) {
    if (isLoading) {
      final fakeQuestions =
          List.generate(3, (index) => QuestionModel.fake()).toList();

      return Skeletonizer(
        child: ListView.builder(
          itemCount: fakeQuestions.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return QuestionContainer(
              question: fakeQuestions[index],
            );
          },
        ),
      );
    }

    if (questions.isEmpty) {
      return Center(
        child: Text(
          'No questions found',
          style: context.theme.textTheme.bodyLarge,
        ),
      );
    }

    return ListView.builder(
      itemCount: questions.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return QuestionContainer(
          question: questions[index],
        );
      },
    );
  }
}
