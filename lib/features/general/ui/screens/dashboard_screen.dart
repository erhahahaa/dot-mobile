import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/di.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget implements AutoRouteWrapper {
  const DashboardScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ClubBloc>(
          create: (_) => sl<ClubBloc>(),
        ),
        BlocProvider<ProgramBloc>(
          create: (_) => sl<ProgramBloc>(),
        ),
        BlocProvider<ExerciseBloc>(
          create: (_) => sl<ExerciseBloc>(),
        ),
        BlocProvider<ExamBloc>(
          create: (_) => sl<ExamBloc>(),
        ),
        BlocProvider<QuestionBloc>(
          create: (_) => sl<QuestionBloc>(),
        ),
        BlocProvider<EvaluationBloc>(
          create: (_) => sl<EvaluationBloc>(),
        ),
        BlocProvider<TacticalBloc>(
          create: (_) => sl<TacticalBloc>(),
        ),
        BlocProvider<MediaBloc>(
          create: (_) => sl<MediaBloc>(),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
