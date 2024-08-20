import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/di.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_design/moon_design.dart';

@RoutePage()
class AthleteDashboardScreen extends StatelessWidget
    implements AutoRouteWrapper {
  const AthleteDashboardScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AthleteClubBloc>(
          create: (_) => sl<AthleteClubBloc>(),
        ),
        BlocProvider<AthleteProgramBloc>(
          create: (_) => sl<AthleteProgramBloc>(),
        ),
        BlocProvider<AthleteTacticalBloc>(
          create: (_) => sl<AthleteTacticalBloc>(),
        ),
        BlocProvider<AthleteExerciseBloc>(
          create: (_) => sl<AthleteExerciseBloc>(),
        ),
        BlocProvider<AthleteEvaluationBloc>(
          create: (_) => sl<AthleteEvaluationBloc>(),
        ),
        BlocProvider<AthleteExamBloc>(
          create: (_) => sl<AthleteExamBloc>(),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,
      routes: const [
        AthleteListClubRoute(),
        AthleteListTacticalRoute(),
        AthleteListEvaluationRoute(),
        ProfileRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      bottomNavigationBuilder: (context, tabsRouter) {
        return DotNavigationBar(
          marginR: EdgeInsets.symmetric(horizontal: 8.w),
          paddingR: EdgeInsets.all(4.w),
          borderRadius: 555.r,
          backgroundColor: context.isDarkMode ? Colors.black : Colors.white,
          unselectedItemColor:
              context.isDarkMode ? Colors.grey[800] : Colors.grey[300],
          selectedItemColor: context.isDarkMode ? Colors.white : Colors.black,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            DotNavigationBarItem(
              icon: const Icon(Icons.home),
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.videogame_asset_rounded),
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.directions_run_rounded),
            ),
            DotNavigationBarItem(
              icon: const Icon(Icons.person),
            ),
          ],
        );
      },
    );
  }
}
