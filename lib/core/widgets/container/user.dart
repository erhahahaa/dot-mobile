import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserCard extends StatelessWidget {
  final bool isHome;
  final UserModel user;

  const UserCard({
    super.key,
    this.isHome = true,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      width: 308.w,
      height: 72.h,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.25),
            blurRadius: 8,
            spreadRadius: 0,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child:
          isHome ? _buildHome(context, theme) : _buildProfile(context, theme),
    );
  }

  Widget _buildProfile(BuildContext context, ThemeData theme) {
    return Row(
      children: [
        CachedNetworkImage(
          width: 64.w,
          height: 64.w,
          imageUrl: user.image,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => Text(
            error.toString(),
          ),
        ),
        SizedBox(width: 8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            H2Text(user.name),
            SizedBox(height: 4.h),
            H6Text(
                user.expertise ?? context.str?.noExpertise ?? 'No expertise'),
          ],
        ),
      ],
    );
  }

  Widget _buildHome(BuildContext context, ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.str?.hello ?? 'Hello,',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              user.name.split(" ").first,
              style: theme.textTheme.titleLarge?.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.str?.sport ?? 'Sport :',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 6.h),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 2, 16, 2),
              decoration: BoxDecoration(
                color: const Color(0xFF763AD8),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.sports_volleyball,
                    color: Colors.white,
                    size: 16,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    context.str?.volleyBall ?? 'Volleyball',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
