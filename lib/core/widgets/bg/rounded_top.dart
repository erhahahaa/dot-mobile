import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/core/widgets/widgets.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedTopBackground extends StatelessWidget {
  final Widget child;
  final String title;
  final Widget? suffix;
  final bool showBackButton, centerTitle;
  final MainAxisAlignment? mainAxisAlignment;

  const RoundedTopBackground({
    super.key,
    required this.child,
    this.title = 'Untitled',
    this.showBackButton = true,
    this.centerTitle = false,
    this.suffix,
    this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF5767ED), Color(0xFF32ADBE)],
            ),
          ),
        ),
        Positioned(
          top: 44.h,
          left: 8,
          right: 8,
          child: Row(
            children: [
              if (showBackButton)
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: BorderSide(
                      width: 2,
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                  onPressed: () => context.router.back(),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_rounded,
                        color: theme.colorScheme.onPrimary,
                        size: 14.sp,
                      ),
                    ],
                  ),
                ),
              SizedBox(width: 8.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                width: showBackButton ? 248.w : 312.w,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.circular(64.r),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.primary.withOpacity(0.25),
                      blurRadius: 8,
                      spreadRadius: 0,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: mainAxisAlignment != null
                      ? mainAxisAlignment!
                      : centerTitle
                          ? MainAxisAlignment.center
                          : MainAxisAlignment.start,
                  children: [
                    TitleLarge(title.maxChar(15)),
                    if (suffix != null) suffix!,
                  ],
                ),
              ),
              SizedBox(width: 8.w),
            ],
          ),
        ),
        Positioned(
          top: 100.h,
          bottom: 0,
          child: Container(
            width: 344.w,
            height: 680.h,
            padding: EdgeInsets.only(top: 24.h, left: 16.w, right: 16.w),
            decoration: BoxDecoration(
              color: context.theme.colorScheme.surface,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.r),
                topRight: Radius.circular(32.r),
              ),
            ),
            child: child,
          ),
        )
      ],
    );
  }
}
