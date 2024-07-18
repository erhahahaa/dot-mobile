import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          return Stack(
            children: [
              Positioned(
                top: 0,
                child: Assets.images.bg.gradientSkewedRight.svg(
                  width: 344.w,
                ),
              ),
              Positioned(
                top: 60,
                child: Container(
                  width: 332.w,
                  margin: EdgeInsets.all(8.w),
                  padding: EdgeInsets.all(4.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      CachedNetworkImage(
                        width: 64.w,
                        height: 64.w,
                        imageUrl: state.user.image,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Text(
                          error.toString(),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Column(
                        children: [
                          Text(
                            state.user.name,
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 180,
                child: Container(
                  width: 332.w,
                  margin: EdgeInsets.all(8.w),
                  padding: EdgeInsets.all(4.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      state.user.role == UserRole.coach
                          ? TextButton(
                              onPressed: () => context
                                  .pushNamed(AppRoutes.coachDashboard.name),
                              child: const Text('Coach Dashboard'),
                            )
                          : const SizedBox(),
                      BlocListener<AuthCubit, AuthState>(
                        listener: (context, state) {
                          if (state.status == AuthStatus.unauthenticated) {
                            context.goNamed(AppRoutes.authSignIn.name);
                          }
                        },
                        child: TextButton(
                          onPressed: () => context.read<AuthCubit>().logout(),
                          child: const Text('Logout'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
