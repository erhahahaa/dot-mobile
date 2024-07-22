import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/di.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static late BuildContext ctx;
  static final _rootKey = GlobalKey<NavigatorState>();
  static final _authKey = GlobalKey<NavigatorState>();

  /// [Athlete] keys
  static final _athleteHomeKey = GlobalKey<NavigatorState>();
  static final _athleteTacticalShellKey = GlobalKey<NavigatorState>();
  static final _athleteHistoryShellKey = GlobalKey<NavigatorState>();
  static final _athleteProfileShellKey = GlobalKey<NavigatorState>();

  /// [Coach] keys
  static final _coachDashboardKey = GlobalKey<NavigatorState>();
  static final _coachProgramShellKey = GlobalKey<NavigatorState>();
  static final _coachTacticalShellKey = GlobalKey<NavigatorState>();
  static final _coachHistoryShellKey = GlobalKey<NavigatorState>();
  static final _coachProfileShellKey = GlobalKey<NavigatorState>();

  AppRouter.setStream(BuildContext c) {
    ctx = c;
  }

  static final GoRouter router = GoRouter(
    navigatorKey: _rootKey,
    routes: [
      GoRoute(
        path: AppRoutes.root.path,
        name: AppRoutes.root.name,
        redirect: (_, __) => AppRoutes.splash.path,
      ),
      ShellRoute(
        navigatorKey: _authKey,
        parentNavigatorKey: _rootKey,
        builder: (c, __, child) => BlocProvider.value(
          value: c.read<AuthCubit>()..init(),
          child: child,
        ),
        routes: [
          GoRoute(
            parentNavigatorKey: _authKey,
            path: AppRoutes.splash.path,
            name: AppRoutes.splash.name,
            builder: (cc, state) => BlocProvider.value(
              value: cc.read<AuthCubit>()..init(),
              child: const SplashScreen(),
            ),
          ),
          GoRoute(
            parentNavigatorKey: _authKey,
            path: AppRoutes.authSignIn.path,
            name: AppRoutes.authSignIn.name,
            builder: (context, state) => const SignInScreen(),
          ),
          GoRoute(
            parentNavigatorKey: _authKey,
            path: AppRoutes.authSignUp.path,
            name: AppRoutes.authSignUp.name,
            builder: (context, state) => const SignUpScreen(),
          ),
        ],
      ),

      /// [Athlete] routes
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: _rootKey,
        builder: (_, state, navigationShell) => BottomNavBar(
          navigationShell: navigationShell,
          routerState: state,
          showBottomNavBar: true,
          showCoachNavBar: false,
        ),
        branches: [
          // Home
          StatefulShellBranch(
            navigatorKey: _athleteHomeKey,
            routes: [
              GoRoute(
                path: AppRoutes.athleteHome.path,
                name: AppRoutes.athleteHome.name,
                builder: (_, __) => BlocProvider(
                  create: (_) => di<ClubCubit>()..init(),
                  child: const HomeScreen(),
                ),
              ),
            ],
          ),
          // Tactical
          StatefulShellBranch(
            navigatorKey: _athleteTacticalShellKey,
            routes: [
              GoRoute(
                path: AppRoutes.athleteTactical.path,
                name: AppRoutes.athleteTactical.name,
                builder: (_, __) => BlocProvider(
                  create: (_) => di<TacticalCubit>()..init(),
                  child: const TacticalScreen(),
                ),
              ),
            ],
          ),
          // History
          StatefulShellBranch(
            navigatorKey: _athleteHistoryShellKey,
            routes: [
              GoRoute(
                path: AppRoutes.athleteHistory.path,
                name: AppRoutes.athleteHistory.name,
                builder: (_, __) => BlocProvider(
                  create: (_) => di<UserCubit>()..init(),
                  child: const HistoryScreen(),
                ),
              ),
            ],
          ),
          // Profile
          StatefulShellBranch(
            navigatorKey: _athleteProfileShellKey,
            routes: [
              GoRoute(
                path: AppRoutes.athleteProfile.path,
                name: AppRoutes.athleteProfile.name,
                builder: (_, __) => BlocProvider(
                  create: (_) => di<UserCubit>()..init(),
                  child: const ProfileScreen(),
                ),
              ),
            ],
          ),
        ],
      ),

      /// [Coach] routes
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: _rootKey,
        builder: (_, state, navigationShell) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => di<ClubCubit>()..init()),
            BlocProvider(
                create: (_) => di<ProgramCubit>()..init(routeName: state.name)),
            BlocProvider(create: (_) => di<TacticalCubit>()..init()),
            BlocProvider(create: (_) => di<UserCubit>()..init()),
          ],
          child: BottomNavBar(
            navigationShell: navigationShell,
            routerState: state,
            showBottomNavBar: false,
            showCoachNavBar: true,
          ),
        ),
        branches: [
          // Home
          StatefulShellBranch(
            navigatorKey: _coachDashboardKey,
            routes: [
              GoRoute(
                path: AppRoutes.coachDashboard.path,
                name: AppRoutes.coachDashboard.name,
                builder: (c, __) => BlocProvider.value(
                  value: c.read<ClubCubit>(),
                  child: const DashboardScreen(),
                ),
              ),
              GoRoute(
                path: AppRoutes.coachCreateClub.path,
                name: AppRoutes.coachCreateClub.name,
                builder: (c, __) => BlocProvider.value(
                  value: c.read<ClubCubit>(),
                  child: const ClubFormScreen(),
                ),
              ),
              GoRoute(
                path: AppRoutes.coachClubDetail.path,
                name: AppRoutes.coachClubDetail.name,
                builder: (c, state) {
                  final extra = state.extra as Map<String, dynamic>;
                  final club = extra['club'] as ClubModel;
                  return BlocProvider.value(
                    value: c.read<ClubCubit>(),
                    child: ClubDetailScreen(club: club),
                  );
                },
              ),
            ],
          ),
          // Program
          StatefulShellBranch(
            navigatorKey: _coachProgramShellKey,
            routes: [
              GoRoute(
                path: AppRoutes.coachProgram.path,
                name: AppRoutes.coachProgram.name,
                builder: (c, state) {
                  final extra = state.extra as Map<String, dynamic>;
                  final club = extra['club'] as ClubModel;
                  return BlocProvider.value(
                    value: c.read<ProgramCubit>()
                      ..init(clubId: club.id, routeName: state.name),
                    child: ProgramScreen(club: club),
                  );
                },
              ),
              GoRoute(
                path: AppRoutes.coachCreateProgram.path,
                name: AppRoutes.coachCreateProgram.name,
                builder: (c, state) {
                  final params = state.pathParameters;

                  return BlocProvider.value(
                    value: c.read<ProgramCubit>(),
                    child: ProgramFormScreen(
                      clubId: int.parse(
                        params['clubId'] ?? '0',
                      ),
                      routeName: AppRoutes.coachCreateProgram.name,
                    ),
                  );
                },
              ),
              GoRoute(
                path: AppRoutes.coachCreateProgramExercise.path,
                name: AppRoutes.coachCreateProgramExercise.name,
                builder: (c, state) {
                  final extra = state.extra as Map<String, dynamic>;

                  return BlocProvider.value(
                    value: c.read<ProgramCubit>(),
                    child: ExerciseForm(
                      program: extra['program'] as ProgramModel,
                    ),
                  );
                },
              ),
              GoRoute(
                path: AppRoutes.coachProgramDetail.path,
                name: AppRoutes.coachProgramDetail.name,
                builder: (c, state) {
                  final extra = state.extra as Map<String, dynamic>;
                  final program = extra['program'] as ProgramModel;
                  return BlocProvider.value(
                    value: c.read<ProgramCubit>(),
                    child: PorgramDetailScreen(program: program),
                  );
                },
              ),
            ],
          ),
          // Tactical
          StatefulShellBranch(
            navigatorKey: _coachTacticalShellKey,
            routes: [
              GoRoute(
                path: AppRoutes.coachTactical.path,
                name: AppRoutes.coachTactical.name,
                builder: (c, __) => BlocProvider.value(
                  value: c.read<TacticalCubit>(),
                  child: const TacticalScreen(),
                ),
              ),
            ],
          ),

          // History
          StatefulShellBranch(
            navigatorKey: _coachHistoryShellKey,
            routes: [
              GoRoute(
                path: AppRoutes.coachHistory.path,
                name: AppRoutes.coachHistory.name,
                builder: (c, __) => BlocProvider.value(
                  value: c.read<UserCubit>(),
                  child: const HistoryScreen(),
                ),
              ),
            ],
          ),

          // Profile
          StatefulShellBranch(
            navigatorKey: _coachProfileShellKey,
            routes: [
              GoRoute(
                path: AppRoutes.coachProfile.path,
                name: AppRoutes.coachProfile.name,
                builder: (c, __) => BlocProvider.value(
                  value: c.read<UserCubit>(),
                  child: const ProfileScreen(),
                ),
              ),
            ],
          ),
        ],
      )
    ],
    initialLocation: AppRoutes.root.path,
    routerNeglect: true,
    debugLogDiagnostics: kDebugMode,
    refreshListenable: GoRouterRefreshStream(ctx.read<AuthCubit>().stream),
  );
}
