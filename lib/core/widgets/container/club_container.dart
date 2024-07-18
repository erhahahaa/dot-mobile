import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ClubContainer extends StatelessWidget {
  final ClubModel club;
  const ClubContainer({
    super.key,
    required this.club,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(
        AppRoutes.coachClubDetail.name,
        extra: {club},
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.white,
        ),
        margin: EdgeInsets.only(bottom: 8.w),
        padding: EdgeInsets.all(8.w),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: club.image,
              width: 48.w,
              height: 48.w,
            ),
            SizedBox(width: 8.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  club.name,
                  style: context.theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  club.type.name,
                  style: context.theme.textTheme.bodyMedium,
                ),
              ],
            ),
            Spacer(),
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
