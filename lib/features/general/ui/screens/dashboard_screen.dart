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
        // Read
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
        BlocProvider<ProgramMediaBlocRead>(
          create: (_) => sl<ProgramMediaBlocRead>(),
        ),
        BlocProvider<ExerciseMediaBlocRead>(
          create: (_) => sl<ExerciseMediaBlocRead>(),
        ),
        BlocProvider<TacticalMediaBlocRead>(
          create: (_) => sl<TacticalMediaBlocRead>(),
        ),

        // Write
        // BlocProvider<ProgramBlocWrite>(
        //   create: (_) => sl<ProgramBlocWrite>(),
        // ),
        // BlocProvider<ExerciseBlocWrite>(
        //   create: (_) => sl<ExerciseBlocWrite>(),
        // ),
        // BlocProvider<ExamBlocWrite>(
        //   create: (_) => sl<ExamBlocWrite>(),
        // ),
        // BlocProvider<QuestionBlocWrite>(
        //   create: (_) => sl<QuestionBlocWrite>(),
        // ),
        // BlocProvider<EvaluationBlocWrite>(
        //   create: (_) => sl<EvaluationBlocWrite>(),
        // ),
        // BlocProvider<TacticalBlocWrite>(
        //   create: (_) => sl<TacticalBlocWrite>(),
        // ),
        BlocProvider<ProgramMediaBlocWrite>(
          create: (_) => sl<ProgramMediaBlocWrite>(),
        ),
        BlocProvider<ExerciseMediaBlocWrite>(
          create: (_) => sl<ExerciseMediaBlocWrite>(),
        ),
        BlocProvider<TacticalMediaBlocWrite>(
          create: (_) => sl<TacticalMediaBlocWrite>(),
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
