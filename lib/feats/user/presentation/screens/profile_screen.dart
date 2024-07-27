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
          return SkewedRightBackground(
            children: [
              Positioned(
                top: 60.h,
                left: 18.w,
                child: UserCard(
                  user: state.user,
                  isHome: false,
                ),
              ),
              Positioned(
                top: 180.h,
                left: 22.w,
                right: 22.w,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const H2Text('Club Management'),
                    SizedBox(height: 8.h),
                    Container(
                      padding: EdgeInsets.all(8.w),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: context.containerColor(0.05),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        children: [
                          ProfileNavigationButton(
                            icon: Icons.sports_basketball,
                            text: 'Club Dashboard',
                            onPressed: () => context
                                .pushNamed(AppRoutes.coachDashboard.name),
                          ),
                        ],
                      ),
                    ),
                    const H2Text('General'),
                    SizedBox(height: 8.h),
                    Container(
                      padding: EdgeInsets.all(8.w),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: context.containerColor(0.05),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        children: [
                          DropDown<Locale>(
                            prefixIcon: const Icon(
                              Icons.language,
                            ),
                            hint: 'Language',
                            contentPadding: EdgeInsets.all(8.w),
                            fillColor: context.containerColor(0.05),
                            items: [
                              DropdownMenuItem(
                                value: const Locale('en', 'US'),
                                child: Row(
                                  children: [
                                    Assets.images.flags.us.svg(width: 14.w),
                                    SizedBox(width: 8.w),
                                    const Text('English'),
                                  ],
                                ),
                              ),
                              DropdownMenuItem(
                                value: const Locale('id', 'ID'),
                                child: Row(
                                  children: [
                                    Assets.images.flags.id.svg(width: 14.w),
                                    SizedBox(width: 8.w),
                                    const Text('Bahasa'),
                                  ],
                                ),
                              ),
                            ],
                            value: const Locale('en', 'US'),
                            onChanged: (value) {
                              if (value == null) return;
                              context.read<UserCubit>().setLocale(value);
                            },
                          ),
                          SizedBox(height: 8.h),
                          DropDown<ThemeMode>(
                            prefixIcon: const Icon(
                              Icons.color_lens,
                            ),
                            hint: 'Theme',
                            contentPadding: EdgeInsets.all(8.w),
                            fillColor: context.containerColor(0.05),
                            items: [
                              DropdownMenuItem(
                                value: ThemeMode.system,
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.computer,
                                    ),
                                    SizedBox(width: 8.w),
                                    const Text('System'),
                                  ],
                                ),
                              ),
                              DropdownMenuItem(
                                value: ThemeMode.light,
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.light_mode,
                                    ),
                                    SizedBox(width: 8.w),
                                    const Text('Light'),
                                  ],
                                ),
                              ),
                              DropdownMenuItem(
                                value: ThemeMode.dark,
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.dark_mode,
                                    ),
                                    SizedBox(width: 8.w),
                                    const Text('Dark'),
                                  ],
                                ),
                              ),
                            ],
                            value: ThemeMode.system,
                            onChanged: (value) {
                              if (value == null) return;
                              context.read<UserCubit>().setTheme(value);
                              log.f('Theme changed to $value');
                            },
                          ),
                        ],
                      ),
                    ),
                    const H2Text('User'),
                    SizedBox(height: 8.h),
                    Container(
                      padding: EdgeInsets.all(8.w),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: context.containerColor(0.05),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        children: [
                          ProfileNavigationButton(
                            icon: Icons.person,
                            text: 'Edit Profile',
                            onPressed: () => context
                                .pushNamed(AppRoutes.athleteEditProfile.name),
                          ),
                          const GappedDivider(),
                          BlocListener<AuthCubit, AuthState>(
                            listener: (context, state) {
                              if (state.status == AuthStatus.unauthenticated) {
                                context.goNamed(AppRoutes.authSignIn.name);
                              }
                            },
                            child: ProfileNavigationButton(
                              icon: Icons.logout,
                              onPressed: () =>
                                  context.read<AuthCubit>().logout(),
                              text: 'Logout',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
