import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProgramContainer extends StatelessWidget {
  final ProgramModel program;
  final bool isCoach;
  const ProgramContainer({
    super.key,
    required this.program,
    this.isCoach = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return InkWell(
      onTap: () {
        final params = {
          'id': program.id.toString(),
        };
        final extra = {
          'program': program,
        };

        if (isCoach) {
          context.pushNamed(
            AppRoutes.coachProgramDetail.name,
            pathParameters: params,
            extra: extra,
          );
          return;
        } else {}
      },
      child: Container(
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
                Text(
                  program.name,
                  style: context.theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Spacer(),
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
      ),
    );
  }
}
