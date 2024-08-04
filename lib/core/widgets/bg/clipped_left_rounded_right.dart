import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClippedLeftRoundedRightBackground extends StatelessWidget {
  final Widget child;
  final String title;
  const ClippedLeftRoundedRightBackground({
    super.key,
    required this.child,
    this.title = 'Untitled',
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF5868F1), Color(0xFF83348E)],
            ),
          ),
        ),
        Positioned(
          top: 88.h,
          child: SvgPicture.asset(
            "assets/images/bg/F5F6FF-bg.svg",
            width: 53.w,
            height: 139.h,
            colorFilter: ColorFilter.mode(
              context.theme.colorScheme.surface,
              BlendMode.srcIn,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 344.w,
            height: 644.h,
            decoration: BoxDecoration(
                color: context.theme.colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                )),
          ),
        ),
        Positioned(
          top: 40.h,
          child: Container(
            width: 345.w,
            height: 76.h,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF5868F1), Color(0xFF83348E)],
              ),
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: Container(
              width: 308.w,
              height: 46.h,
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 8,
                    spreadRadius: 0,
                    offset: const Offset(4, 4),
                  ),
                ],
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 130.h,
          left: 16.w,
          right: 16.w,
          bottom: 0,
          child: child,
        ),
      ],
    );
  }
}
