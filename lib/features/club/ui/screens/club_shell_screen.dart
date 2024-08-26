import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ClubShellScreen extends StatelessWidget implements AutoRouteWrapper {
  final int id;
  const ClubShellScreen({
    super.key,
    @pathParam required this.id,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: context.read<ProgramBlocRead>()
            ..add(
              BlocEventRead.get(id: id),
            ),
        ),
        BlocProvider.value(
          value: context.read<TacticalBlocRead>()
            ..add(
              BlocEventRead.get(id: id),
            ),
        ),
        BlocProvider.value(
          value: context.read<EvaluationBlocRead>()
            ..add(
              BlocEventRead.get(id: id),
            ),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBody: false,
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,
      routes: const [
        ListProgramRoute(),
        ListTacticalRoute(),
        ListExamRoute(),
        ListEvaluationRoute(),
        MediaRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      bottomNavigationBuilder: (context, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.event),
              label: 'Program',
            ),
            NavigationDestination(
              icon: Icon(Icons.military_tech),
              label: 'Tactical',
            ),
            NavigationDestination(
              icon: Icon(Icons.quiz),
              label: 'Exam',
            ),
            NavigationDestination(
              icon: Icon(Icons.rate_review),
              label: 'Evaluation',
            ),
            NavigationDestination(
              icon: Icon(Icons.inventory),
              label: 'Asset',
            ),
          ],
        );
      },
    );
  }
}
