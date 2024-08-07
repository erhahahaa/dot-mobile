import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TacticalContainer extends StatelessWidget {
  final TacticalModel tactical;
  final ClubModel? club;
  final bool isCoach;

  const TacticalContainer({
    super.key,
    required this.tactical,
    this.club,
    this.isCoach = false,
  });

  @override
  Widget build(BuildContext context) {
    return EightContainer(
      margin: EdgeInsets.only(bottom: 8.w),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H3Text(tactical.name),
              if (tactical.description != null) ...[
                H6Text(tactical.description!),
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
                          AppRoutes.coachTacticalDetail.name,
                          pathParameters: {
                            'id': tactical.id.toString(),
                          },
                          extra: {
                            'route': 'tactical',
                            'tactical': tactical,
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
                          AppRoutes.coachEditTactical.name,
                          extra: {
                            'route': 'tactical',
                            'tactical': tactical,
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
                          context.read<TacticalCubit>().delete(
                                ByIdParams(id: tactical.id.toString()),
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
