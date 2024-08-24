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
        BlocProvider<ProgramBlocRead>(
          create: (_) => sl<ProgramBlocRead>(),
        ),
        BlocProvider<ExerciseBlocRead>(
          create: (_) => sl<ExerciseBlocRead>(),
        ),
        BlocProvider<ExamBlocRead>(
          create: (_) => sl<ExamBlocRead>(),
        ),
        BlocProvider<QuestionBlocRead>(
          create: (_) => sl<QuestionBlocRead>(),
        ),
        BlocProvider<EvaluationBlocRead>(
          create: (_) => sl<EvaluationBlocRead>(),
        ),
        BlocProvider<TacticalBlocRead>(
          create: (_) => sl<TacticalBlocRead>(),
        ),
        // BlocProvider<MediaBlocRead>(
        //   create: (_) => sl<MediaBlocRead>(),
        // ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
