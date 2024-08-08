import 'package:dot_coaching/core/routes/app_routes.dart';
import 'package:dot_coaching/core/widgets/widgets.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class EvaluationContainer extends StatelessWidget {
  final EvaluationModel evaluation;
  final ClubModel club;
  final bool isCoach;

  const EvaluationContainer({
    super.key,
    required this.evaluation,
    required this.club,
    this.isCoach = false,
  });

  @override
  Widget build(BuildContext context) {
    return EightContainer(
      margin: EdgeInsets.only(bottom: 8.w),
      child: Row(
        children: [
          SizedBox(width: 8.w),
          const Spacer(),
          isCoach
              ? PopupMenuButton(
                  popUpAnimationStyle: AnimationStyle(
                    curve: Easing.emphasizedDecelerate,
                    duration: const Duration(milliseconds: 500),
                  ),
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        child: Row(
                          children: [
                            const Icon(Icons.remove_red_eye),
                            const SizedBox(width: 8),
                            Text(
                              context.str?.detail ?? 'Detail',
                            ),
                          ],
                        ),
                        onTap: () => context.pushNamed(
                          AppRoutes.coachExamEvaluationDetail.name,
                          pathParameters: {
                            'id': evaluation.id.toString(),
                          },
                          extra: {
                            'route': 'evaluation',
                            'evaluation': evaluation,
                            'club': club,
                          },
                        ),
                      ),
                      PopupMenuItem(
                        child: Row(
                          children: [
                            const Icon(Icons.edit),
                            const SizedBox(width: 8),
                            Text(
                              context.str?.edit ?? 'Edit',
                            ),
                          ],
                        ),
                        onTap: () => context.pushNamed(
                          AppRoutes.coachEditExamEvaluation.name,
                          extra: {
                            'route': 'evaluation',
                            'evaluation': evaluation,
                            'club': club,
                          },
                        ),
                      ),
                      PopupMenuItem(
                        child: Row(
                          children: [
                            const Icon(Icons.delete),
                            const SizedBox(width: 8),
                            Text(
                              context.str?.delete ?? 'Delete',
                            ),
                          ],
                        ),
                        onTap: () {
                          context.read<QuestionCubit>().delete(
                                ByIdParams(id: evaluation.id.toString()),
                              );
                        },
                      ),
                    ];
                  },
                )
              : Row(
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
  }
}
