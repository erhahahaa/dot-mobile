import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SplashScreen extends StatelessWidget implements AutoRouteWrapper {
  const SplashScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: context.read<AuthBloc>()
        ..add(
          const AuthEvent.checkSession(),
        ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: (user) {
            final role = user.role;
            if (role == UserRole.athlete) {
              context.router.replace(
                const AthleteListClubRoute(),
              );
            } else {
              context.router.replace(
                const CoachListClubRoute(),
              );
            }
          },
          unauthenticated: (_) {
            context.router.replace(const SignInRoute());
          },
          orElse: () {},
        );
      },
      child: Parent(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/dot_logo.png',
                width: 200.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
