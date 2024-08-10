import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/routes/app_routes.dart';
import 'package:dot_coaching/core/widgets/widgets.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ExamContainer extends StatelessWidget {
  final ExamModel exam;
  final ClubModel club;
  final bool isCoach, showBottomMargin;
  final Widget? evaluate;
  final EdgeInsetsGeometry? padding;

  const ExamContainer({
    super.key,
    required this.exam,
    required this.club,
    this.isCoach = false,
    this.evaluate,
    this.padding,
    this.showBottomMargin = true,
  });

  @override
  Widget build(BuildContext context) {
    return EightContainer(
      
      margin: showBottomMargin ? EdgeInsets.only(bottom: 8.w) : EdgeInsets.zero,
      padding: padding,
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: sportImage(exam.media?.url).sanitize(),
            width: 48.w,
            height: 48.w,
            // make image rounded
            imageBuilder: (context, imageProvider) => Container(
              width: 48.w,
              height: 48.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H3Text(exam.title),
              if (evaluate == null) ...[
                H6Text('${context.str?.dueAt} ${exam.dueAt?.toDayMonthYear()}'),
              ]
            ],
          ),
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
                          AppRoutes.coachExamDetail.name,
                          pathParameters: {
                            'id': exam.id.toString(),
                          },
                          extra: {
                            'route': 'exam',
                            'exam': exam,
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
                          AppRoutes.coachEditExam.name,
                          extra: {
                            'route': 'exam',
                            'exam': exam,
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
                          context.read<ExamCubit>().delete(
                                ByIdParams(id: exam.id.toString()),
                              );
                        },
                      ),
                    ];
                  },
                )
              : evaluate ??
                  Row(
                    children: [
                      Text(
                        context.str?.detail ?? 'Detail',
                        style: context.theme.textTheme.bodyMedium?.copyWith(
                            color: context.theme.colorScheme.primary),
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
