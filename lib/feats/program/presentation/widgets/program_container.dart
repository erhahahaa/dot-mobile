import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/routes/app_routes.dart';
import 'package:dot_coaching/core/widgets/widgets.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProgramContainer extends StatelessWidget {
  final ProgramModel program;
  final ClubModel club;
  final bool isCoach;

  const ProgramContainer({
    super.key,
    required this.program,
    required this.club,
    this.isCoach = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: theme.colorScheme.primaryContainer.withOpacity(0.1),
      ),
      margin: EdgeInsets.only(bottom: 8.w),
      padding: EdgeInsets.all(8.w),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: sportImage(program.media?.url).sanitize(),
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
              H3Text(program.name),
              Row(
                children: [
                  H6Text(program.startDate?.toDayMonthYear() ?? ''),
                  const H6Text(' - '),
                  H6Text(program.endDate?.toDayMonthYear() ?? ''),
                ],
              ),
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
                          AppRoutes.coachProgramDetail.name,
                          pathParameters: {
                            'id': program.id.toString(),
                          },
                          extra: {
                            'program': program,
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
                          AppRoutes.coachEditProgram.name,
                          extra: {
                            'program': program,
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
                          context.read<ProgramCubit>().delete(
                                ByIdParams(id: program.id.toString()),
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
