import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RoundedTopBackground extends StatelessWidget {
  final Widget child;
  final String title;
  const RoundedTopBackground({
    super.key,
    required this.child,
    this.title = 'Untitled',
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
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: const CircleBorder(),
                  side: BorderSide(
                    width: 2,
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
                onPressed: () => context.pop(),
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
                width: 248.w,
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
                child: H1Text(
                  title.maxChar(length: 18),
                  color: Colors.black,
                ),
              )
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
