import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/core/gen/assets.gen.dart';
import 'package:dot_coaching/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkewedRightAppBar extends StatelessWidget {
  final Widget? child;
  const SkewedRightAppBar({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 170.h,
      flexibleSpace: Container(
        width: double.infinity,
        height: 210.h,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Palette.BG_LEFT, Palette.BG_RIGHT],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Assets.images.bg.home.svg(
                width: double.infinity,
                height: 200.h,
                colorFilter: ColorFilter.mode(
                  context.theme.scaffoldBackgroundColor,
                  BlendMode.srcATop,
                ),
              ),
              // Positioned(
              //   bottom: 0,
              //   right: 0,
              //   left: 0,
              //   top: 190,
              //   child: ColoredBox(color: context.theme.scaffoldBackgroundColor),
              // ),
              if (child != null) ...[child!]
            ],
          ),
        ),
      ),
    );
  }
}
