import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkewedRightBackground extends StatelessWidget {
  final List<Widget> children;
  const SkewedRightBackground({super.key, required this.children});

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
              colors: [Palette.bgLeft, Palette.bgRight],
            ),
          ),
        ),
        SvgPicture.asset(
          "assets/images/bg/home-athlete.svg",
          width: 344.w,
          height: 171.h,
          colorFilter: ColorFilter.mode(
            theme.scaffoldBackgroundColor,
            BlendMode.srcATop,
          ),
        ),
        Positioned(
          top: 170.h,
          bottom: 0,
          child: Container(
            width: 344.w,
            height: 581.h,
            decoration: BoxDecoration(
              color: theme.scaffoldBackgroundColor,
            ),
          ),
        ), 
        ...children,
      ],
    );
  }
}
