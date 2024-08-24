import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/di.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AthleteDashboardScreen extends StatelessWidget
    implements AutoRouteWrapper {
  const AthleteDashboardScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
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
    return AutoRouter();
  }
}
