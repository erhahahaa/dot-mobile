import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/di.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CoachDashboardScreen extends StatelessWidget implements AutoRouteWrapper {
  const CoachDashboardScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CoachClubBloc>(
          create: (_) => sl<CoachClubBloc>(),
        ),
        BlocProvider<CoachProgramBloc>(
          create: (_) => sl<CoachProgramBloc>(),
        ),
        BlocProvider<CoachExerciseBloc>(
          create: (_) => sl<CoachExerciseBloc>(),
        ),
        BlocProvider<CoachExamBloc>(
          create: (_) => sl<CoachExamBloc>(),
        ),
        BlocProvider<CoachQuestionBloc>(
          create: (_) => sl<CoachQuestionBloc>(),
        ),
        BlocProvider<CoachEvaluationBloc>(
          create: (_) => sl<CoachEvaluationBloc>(),
        ),
        BlocProvider<CoachTacticalBloc>(
          create: (_) => sl<CoachTacticalBloc>(),
        ),
        BlocProvider<CoachMediaBloc>(
          create: (_) => sl<CoachMediaBloc>(),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Parent();
  }
}
