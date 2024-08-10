import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AthleteExamScreen extends StatelessWidget {
  const AthleteExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EvaluationCubit, EvaluationState>(
      builder: (context, state) {
        return Parent(
          body: RoundedTopBackground(
            title: 'Evaluation',
            showBackButton: false,
            child: _buildListEvaluation(context, state),
          ),
        );
      },
    );
  }

  Widget _buildListEvaluation(BuildContext context, EvaluationState state) {
    if (state.state == BaseState.loading) {
      final fakeEvaluation =
          List.generate(9, (index) => EvaluationModel.fake()).toList();
      return Skeletonizer(
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: fakeEvaluation.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return EightContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  H2Text(fakeEvaluation[index].exam?.title ?? ''),
                ],
              ),
            );
          },
        ),
      );
    }

    if (state.filteredEvaluations.isEmpty) {
      return Center(
        child: Text(
          'Evaluation is empty',
          style: context.theme.textTheme.bodyLarge,
        ),
      );
    }

    return ListView.builder(
      itemCount: state.filteredEvaluations.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final evaluation = state.filteredEvaluations[index];
        return EightContainer(
          onTap: () {
            context.pushNamed(
              AppRoutes.athleteExamDetail.name,
              pathParameters: {
                'id': evaluation.id.toString(),
              },
              extra: {
                'evaluation': evaluation,
              },
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  H2Text(evaluation.exam?.title ?? ''),
                  H5Text('Assessor: ${evaluation.coach?.name ?? ''}'),
                  H5Text(
                    'Rated on: ${evaluation.createdAt?.toDayMonthYear() ?? ''}',
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    context.str?.detail ?? 'Detail',
                    style: context.theme.textTheme.bodyMedium
                        ?.copyWith(color: context.theme.colorScheme.primary),
                  ),
                  SizedBox(width: 4.w),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14.sp,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  SizedBox(width: 4.w),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
