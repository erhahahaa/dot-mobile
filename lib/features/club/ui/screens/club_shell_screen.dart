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
          value: context.read<ExamBlocRead>()
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
        MediaRoute(),
        DetailClubRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      bottomNavigationBuilder: (context, tabsRouter) {
        final path = tabsRouter.currentUrl;
        final depth = path.split('/').length;
        if (depth > 4) {
          return const SizedBox.shrink();
        }

        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.event),
              label: context.str?.program ?? 'Program',
            ),
            NavigationDestination(
              icon: const Icon(Icons.military_tech),
              label: context.str?.tactics ?? 'Tactics',
            ),
            NavigationDestination(
              icon: const Icon(Icons.quiz),
              label: context.str?.exam ?? 'Exam',
            ),
            NavigationDestination(
              icon: const Icon(Icons.inventory),
              label: context.str?.assets ?? 'Assets',
            ),
            NavigationDestination(
              icon: const Icon(Icons.info),
              label: context.str?.detail ?? 'Detail',
            ),
          ],
        );
      },
    );
  }
}
