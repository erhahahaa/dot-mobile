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
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        return Parent(
          body: SkewedRightBackground(
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
                    H2Text(
                      context.str?.clubManagement ?? 'Club Management',
                    ),
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
                            text:
                                context.str?.clubDashboard ?? 'Club Dashboard',
                            onPressed: () => context
                                .pushNamed(AppRoutes.coachDashboard.name),
                          ),
                        ],
                      ),
                    ),
                    H2Text(
                      context.str?.general ?? 'General',
                    ),
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
                            hint: context.str?.language ?? 'Language',
                            contentPadding: EdgeInsets.all(8.w),
                            fillColor: context.containerColor(0.05),
                            items: [
                              DropdownMenuItem(
                                value: const Locale('en', 'US'),
                                child: Row(
                                  children: [
                                    Assets.images.flags.us.svg(width: 14.w),
                                    SizedBox(width: 8.w),
                                    Text(
                                      context.str?.english ?? 'English',
                                    ),
                                  ],
                                ),
                              ),
                              DropdownMenuItem(
                                value: const Locale('id', 'ID'),
                                child: Row(
                                  children: [
                                    Assets.images.flags.id.svg(width: 14.w),
                                    SizedBox(width: 8.w),
                                    Text(
                                      context.str?.indonesian ?? 'Indonesian',
                                    ),
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
                            hint: context.str?.theme ?? 'Theme',
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
                                    Text(
                                      context.str?.system ?? 'System',
                                    ),
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
                                    Text(
                                      context.str?.light ?? 'Light Mode',
                                    ),
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
                                    Text(
                                      context.str?.dark ?? 'Dark Mode',
                                    ),
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
                    H2Text(
                      context.str?.user ?? 'User',
                    ),
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
                            text: context.str?.editProfile ?? 'Edit Profile',
                            onPressed: () => context
                                .pushNamed(AppRoutes.athleteEditProfile.name),
                          ),
                          BlocListener<AuthCubit, AuthState>(
                            listener: (context, state) {
                              if (state.status == AuthStatus.unauthenticated) {
                                ToastModel(
                                  message: context.str?.successLogout ??
                                      "Successfully logged out",
                                  type: ToastType.success,
                                ).fire(context);
                                context.goNamed(AppRoutes.authSignIn.name);
                              } else if (state.state == BaseState.failure ||
                                  state.failure != null) {
                                ToastModel(
                                  message: context.str?.failedLogout ??
                                      "Failed to logout",
                                  type: ToastType.error,
                                ).fire(context);
                              }
                            },
                            child: ProfileNavigationButton(
                              icon: Icons.logout,
                              onPressed: () {
                                context.read<AuthCubit>().logout();
                              },
                              text: context.str?.logout ?? 'Logout',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
