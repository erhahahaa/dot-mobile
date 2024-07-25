import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final GoRouterState routerState;
  final bool showBottomNavBar;
  final bool showCoachNavBar;
  const BottomNavBar({
    super.key,
    required this.navigationShell,
    required this.routerState,
    this.showBottomNavBar = true,
    this.showCoachNavBar = false,
  });

  void _goBranch(int index) => navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      );

  @override
  Widget build(BuildContext context) {
    return Parent(
      bottomNavigationBar:
          showBottomNavBar ? _buildBottomNavBar(context.isDarkMode) : null,
      body: navigationShell,
    );
  }

  Widget _buildBottomNavBar(bool isDark) {
    return DotNavigationBar(
      marginR: EdgeInsets.symmetric(horizontal: 8.w),
      paddingR: EdgeInsets.all(4.w),
      borderRadius: 555.r,
      backgroundColor: isDark ? Colors.black : Colors.white,
      unselectedItemColor: isDark ? Colors.grey[800] : Colors.grey[300],
      selectedItemColor: isDark ? Colors.white : Colors.black,
      currentIndex: navigationShell.currentIndex,
      items: showCoachNavBar ? NavRoutes.coachRoutes : NavRoutes.athleteRoutes,
      dotIndicatorColor: isDark ? Colors.white : Colors.black,
      onTap: _goBranch,
    );
  }
}
