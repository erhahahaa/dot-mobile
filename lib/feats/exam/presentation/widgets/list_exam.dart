import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/exts/exts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListExam extends StatelessWidget {
  final List<ExamModel> exams;
  final EdgeInsetsGeometry? padding;
  final bool isCoach;
  final bool isLoading, evaluate;
  final ClubModel club;
  final UserModel? user;

  const ListExam({
    super.key,
    required this.exams,
    this.padding,
    this.isCoach = false,
    this.evaluate = false,
    required this.isLoading,
    required this.club,
    this.user,
  });

  @override
  Widget build(BuildContext context) {
    return EightContainer(
      padding: padding,
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
              padding: padding,
              exam: fakeExam[index],
              isCoach: isCoach,
              club: club,
            );
          },
        ),
      );
    }

    if (exams.isEmpty) {
      return Center(
        child: Text(
          context.str?.emptyExam ?? 'Exam is empty',
          style: context.theme.textTheme.bodyLarge,
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
          padding: padding,
          exam: exams[index],
          isCoach: isCoach,
          club: club,
          showBottomMargin: index != exams.length - 1,
          evaluate: evaluate
              ? ElevatedButton(
                  onPressed: () {
                    context.pop();
                    context.pushNamed(AppRoutes.coachCreateExamEvaluation.name,
                        extra: {
                          'club': club,
                          'user': user,
                          'exam': exams[index],
                        });
                  },
                  child: Text(
                    'Start',
                    style: context.theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                )
              : null,
        );
      },
    );
  }
}
