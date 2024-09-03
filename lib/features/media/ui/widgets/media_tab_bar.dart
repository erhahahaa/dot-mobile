import 'package:dot_coaching/core/widgets/widgets.dart';
import 'package:dot_coaching/utils/extensions/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';

class MediaTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController? controller;
  const MediaTabBar({
    super.key,
    this.controller,
  });

  @override
  Size get preferredSize => Size.fromHeight(42.h);

  @override
  Widget build(BuildContext context) {
    return ContainerWrapper(
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      padding: EdgeInsets.all(4.w),
      child: MoonTabBar.pill(
        tabController: controller,
        tabBarSize: MoonTabBarSize.sm,
        isExpanded: true,
        pillTabs: [
          MoonPillTab(
            label: BodySmall(context.str?.program),
            tabStyle: MoonPillTabStyle(
              selectedTabColor: context.moonColors?.piccolo,
            ),
          ),
          MoonPillTab(
            label: BodySmall(context.str?.exercise),
            tabStyle: MoonPillTabStyle(
              selectedTabColor: context.moonColors?.piccolo,
            ),
          ),
          MoonPillTab(
            label: BodySmall(context.str?.tactic),
            tabStyle: MoonPillTabStyle(
              selectedTabColor: context.moonColors?.piccolo,
            ),
          ),
        ],
      ),
    );
  }
}
