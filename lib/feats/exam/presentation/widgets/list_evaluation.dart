import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListEvaluation extends StatelessWidget {
  final List<EvaluationModel> evaluations;
  final EdgeInsetsGeometry? padding;
  final bool isCoach;
  final bool isLoading;
  final ClubModel club;

  const ListEvaluation({
    super.key,
    required this.evaluations,
    this.padding,
    required this.isCoach,
    required this.isLoading,
    required this.club,
  });

  @override
  Widget build(BuildContext context) {
    return EightContainer(
      child: _buildListEvaluation(context),
    );
  }

  Widget _buildListEvaluation(BuildContext context) {
    if (isLoading) {
      final fakeEvaluation =
          List.generate(9, (index) => EvaluationModel.fake()).toList();

      return Skeletonizer(
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: fakeEvaluation.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return EvaluationContainer(
              evaluation: fakeEvaluation[index],
              isCoach: isCoach,
              club: club,
            );
          },
        ),
      );
    }

    if (evaluations.isEmpty) {
      return Center(
        child: Text(
          'Evaluation is empty',
          style: context.theme.textTheme.bodyLarge,
        ),
      );
    }

    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: evaluations.length,
      shrinkWrap: true,
      padding: padding,
      itemBuilder: (context, index) {
        return EvaluationContainer(
          evaluation: evaluations[index],
          isCoach: isCoach,
          club: club,
        );
      },
    );
  }
}
