import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (BuildContext context, AuthState state) {
        final failure = state.failure;
        if (failure != null) {
          ToastModel(
            message: failure.message,
            type: ToastType.error,
          ).fire(context);
        }
        if (state.status == AuthStatus.unauthenticated) {
          context.goNamed(AppRoutes.authSignIn.name);
          context.read<AuthCubit>().clear();
        }
        if (state.status == AuthStatus.authenticated) {
          context.goNamed(AppRoutes.athleteHome.name);
          context.read<AuthCubit>().clear();
        }
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
