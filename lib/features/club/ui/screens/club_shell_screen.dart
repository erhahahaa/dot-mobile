import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:dot_coaching/features/feature.dart';
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
          value: context.read<ProgramBloc>()
            ..add(
              ProgramEvent.getPrograms(
                GetAllProgramParams(clubId: id),
              ),
            ),
        ),
        BlocProvider.value(
          value: context.read<TacticalBloc>()
            ..add(
              TacticalEvent.getTacticals(
                GetAllTacticalParams(clubId: id),
              ),
            ),
        ),
        BlocProvider.value(
          value: context.read<EvaluationBloc>()
            ..add(
              EvaluationEvent.getEvaluations(
                GetAllEvaluationParams(clubId: id),
              ),
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
        ListEvaluationRoute(),
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
              icon: Icon(Icons.home),
              label: 'Program',
            ),
            NavigationDestination(
              icon: Icon(Icons.sports_soccer),
              label: 'Tactical',
            ),
            NavigationDestination(
              icon: Icon(Icons.assignment_turned_in),
              label: 'Evaluation',
            ),
          ],
        );
      },
    );
  }
}
