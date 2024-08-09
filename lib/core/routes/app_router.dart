import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/sl.dart';
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
  static final _athleteNotificationShellKey = GlobalKey<NavigatorState>();
  static final _athleteProfileShellKey = GlobalKey<NavigatorState>();

  /// [Coach] keys
  static final _coachClubKey = GlobalKey<NavigatorState>();
  static final _coachProgramShellKey = GlobalKey<NavigatorState>();
  static final _coachExamShellKey = GlobalKey<NavigatorState>();
  static final _coachEvaluationShellKey = GlobalKey<NavigatorState>();
  static final _coachTacticalShellKey = GlobalKey<NavigatorState>();
  static final _coachAssetShellKey = GlobalKey<NavigatorState>();

  AppRouter.setStream(BuildContext c) {
    ctx = c;
  }

  static final GoRouter router = GoRouter(
    navigatorKey: _rootKey,
    initialLocation: AppRoutes.root.path,
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
          value: c.read<AuthCubit>(),
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
        builder: (_, state, navigationShell) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => sl<ClubCubit>()),
            BlocProvider(create: (_) => sl<ProgramCubit>()),
            BlocProvider(create: (_) => sl<TacticalCubit>()),
            BlocProvider(create: (_) => sl<ExerciseCubit>()),
            BlocProvider(create: (_) => sl<ExamCubit>()),
          ],
          child: BottomNavBar(
            navigationShell: navigationShell,
            routerState: state,
            showBottomNavBar: true,
            showCoachNavBar: false,
          ),
        ),
        branches: [
          // Home
          StatefulShellBranch(
            navigatorKey: _athleteHomeKey,
            routes: [
              GoRoute(
                path: AppRoutes.athleteHome.path,
                name: AppRoutes.athleteHome.name,
                builder: (c, state) => BlocProvider.value(
                  value: c.read<ClubCubit>()..init(),
                  child: const HomeScreen(),
                ),
              ),
              GoRoute(
                path: AppRoutes.athleteClubDetail.path,
                name: AppRoutes.athleteClubDetail.name,
                builder: (c, state) {
                  final extra = state.extra as Map<String, dynamic>;
                  final club = extra['club'] as ClubModel;

                  return BlocProvider.value(
                    value: c.read<ProgramCubit>()..init(clubId: club.id),
                    child: AthleteClubDetailScreen(
                      club: club,
                    ),
                  );
                },
              ),
              GoRoute(
                path: AppRoutes.athleteProgramDetail.path,
                name: AppRoutes.athleteProgramDetail.name,
                builder: (c, state) {
                  final extra = state.extra as Map<String, dynamic>;
                  final program = extra['program'] as ProgramModel;

                  return ProgramDetailScreen(program: program);
                },
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
                builder: (c, state) {
                  return BlocProvider.value(
                    value: c.read<TacticalCubit>()..init(),
                    child: const AthleteTacticalScreen(),
                  );
                },
              ),
              GoRoute(
                path: AppRoutes.athleteTacticalDetail.path,
                name: AppRoutes.athleteTacticalDetail.name,
                builder: (c, state) {
                  final extra = state.extra as Map<String, dynamic>;
                  final tactical = extra['tactical'] as TacticalModel;
                  final screenWidth = extra['screenWidth'] as double;
                  final screenHeight = extra['screenHeight'] as double;
                  final aspectRatio = extra['aspectRatio'] as double;

                  return TacticalDetailScreen(
                    tactical: tactical,
                    aspectRatio: aspectRatio,
                    screenSize: Size(
                      screenWidth,
                      screenHeight,
                    ),
                  );
                },
              )
            ],
          ),
          // History
          StatefulShellBranch(
            navigatorKey: _athleteHistoryShellKey,
            routes: [
              GoRoute(
                path: AppRoutes.athleteExam.path,
                name: AppRoutes.athleteExam.name,
                builder: (_, __) => BlocProvider(
                  create: (_) => sl<UserCubit>()..init(),
                  child: const AthleteExamScreen(),
                ),
              ),
            ],
          ),
          // Notification
          StatefulShellBranch(
            navigatorKey: _athleteNotificationShellKey,
            routes: [
              GoRoute(
                path: AppRoutes.athleteNotification.path,
                name: AppRoutes.athleteNotification.name,
                builder: (c, __) => BlocProvider.value(
                  value: c.read<UserCubit>()..init(),
                  child: const NotificationScreen(),
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
                builder: (_, __) => const ProfileScreen(),
                // builder: (_, __) => BlocProvider.value(
                //   value: sl<UserCubit>()..init(),
                //   child: const ProfileScreen(),
                // ),
              ),
              GoRoute(
                path: AppRoutes.athleteEditProfile.path,
                name: AppRoutes.athleteEditProfile.name,
                builder: (_, __) => const EditProfileScreen(),
                // builder: (_, __) => BlocProvider.value(
                //   value: sl<UserCubit>()..init(),
                //   child: const EditProfileScreen(),
                // ),
              ),
            ],
          ),
        ],
      ),

      /// [Coach Club] routes
      ShellRoute(
        navigatorKey: _coachClubKey,
        parentNavigatorKey: _rootKey,
        builder: (context, state, child) {
          return BlocProvider(
            create: (_) => sl<ClubCubit>()..init(),
            child: child,
          );
        },
        routes: [
          GoRoute(
            parentNavigatorKey: _coachClubKey,
            path: AppRoutes.coachDashboard.path,
            name: AppRoutes.coachDashboard.name,
            builder: (_, __) => const CoachDashboardScreen(),
          ),
          GoRoute(
            parentNavigatorKey: _coachClubKey,
            path: AppRoutes.coachCreateClub.path,
            name: AppRoutes.coachCreateClub.name,
            builder: (_, __) => const CoachClubFormScreen(),
          ),
          GoRoute(
            path: AppRoutes.coachEditClub.path,
            name: AppRoutes.coachEditClub.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final club = extra['club'] as ClubModel;

              return CoachClubFormScreen(club: club);
            },
          ),
          GoRoute(
            path: AppRoutes.coachClubDetail.path,
            name: AppRoutes.coachClubDetail.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final club = extra['club'] as ClubModel;

              return BlocProvider.value(
                value: c.read<ClubCubit>(),
                child: CoachClubDetailScreen(club: club),
              );
            },
          ),
          GoRoute(
            path: AppRoutes.coachClubMember.path,
            name: AppRoutes.coachClubMember.name,
            builder: (c, state) {
              final params = state.pathParameters;
              final clubId = int.parse(params['clubId'] ?? '0');

              return BlocProvider.value(
                value: c.read<ClubCubit>()
                  ..getMembers(const PaginationParams(), clubId),
                child: CoachMemberScreen(
                  clubId: clubId,
                ),
              );
            },
          ),
          GoRoute(
            path: AppRoutes.coachAddMember.path,
            name: AppRoutes.coachAddMember.name,
            builder: (c, state) {
              final params = state.pathParameters;
              final clubId = int.parse(params['clubId'] ?? '0');

              return BlocProvider.value(
                value: c.read<ClubCubit>()..searchUser(''),
                child: CoachAddMemberScreen(
                  clubId: clubId,
                ),
              );
            },
          ),
        ],
      ),

      /// [Coach Program] routes
      ShellRoute(
        navigatorKey: _coachProgramShellKey,
        parentNavigatorKey: _rootKey,
        builder: (context, state, child) {
          final extra = state.extra as Map<String, dynamic>;
          final club = extra['club'] as ClubModel;

          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => sl<ProgramCubit>()
                  ..clear()
                  ..init(clubId: club.id),
              ),
              BlocProvider(create: (_) => sl<ExerciseCubit>()..emitInitial()),
              BlocProvider(
                create: (_) => sl<MediaCubit>()
                  ..init(
                    clubId: club.id,
                    parents: [MediaParent.program],
                  ),
              ),
            ],
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: AppRoutes.coachProgram.path,
            name: AppRoutes.coachProgram.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final club = extra['club'] as ClubModel;

              return CoachProgramScreen(club: club);
            },
          ),
          GoRoute(
            path: AppRoutes.coachCreateProgram.path,
            name: AppRoutes.coachCreateProgram.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final club = extra['club'] as ClubModel;

              return CoachProgramFormScreen(
                club: club,
              );
            },
          ),
          GoRoute(
            path: AppRoutes.coachEditProgram.path,
            name: AppRoutes.coachEditProgram.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final program = extra['program'] as ProgramModel;
              final club = extra['club'] as ClubModel;

              return CoachProgramFormScreen(
                club: club,
                program: program,
              );
            },
          ),
          GoRoute(
            path: AppRoutes.coachCreateProgramExercise.path,
            name: AppRoutes.coachCreateProgramExercise.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final program = extra['program'] as ProgramModel;
              final club = extra['club'] as ClubModel;

              return CoachExerciseForm(club: club, program: program);
            },
          ),
          GoRoute(
            path: AppRoutes.coachEditProgramExercise.path,
            name: AppRoutes.coachEditProgramExercise.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final program = extra['program'] as ProgramModel;
              final exercises =
                  extra['exercises'] as List<ProgramExerciseModel>?;
              final club = extra['club'] as ClubModel;

              return CoachExerciseForm(
                club: club,
                program: program,
                exercises: exercises,
              );
            },
          ),
          GoRoute(
            path: AppRoutes.coachProgramDetail.path,
            name: AppRoutes.coachProgramDetail.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final program = extra['program'] as ProgramModel;

              return ProgramDetailScreen(program: program);
            },
          ),
        ],
      ),

      /// [Coach Exam] routes
      ShellRoute(
        navigatorKey: _coachExamShellKey,
        parentNavigatorKey: _rootKey,
        builder: (context, state, child) {
          final extra = state.extra as Map<String, dynamic>;
          final club = extra['club'] as ClubModel;

          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => sl<ExamCubit>()
                  ..clear()
                  ..init(clubId: club.id),
              ),
              BlocProvider(create: (_) => sl<QuestionCubit>()..emitInitial()),
              BlocProvider(
                create: (_) => sl<MediaCubit>()
                  ..init(
                    clubId: club.id,
                    parents: [MediaParent.question],
                  ),
              ),
            ],
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: AppRoutes.coachExam.path,
            name: AppRoutes.coachExam.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final club = extra['club'] as ClubModel;

              return CoachExamScreen(club: club);
            },
          ),
          GoRoute(
            path: AppRoutes.coachCreateExam.path,
            name: AppRoutes.coachCreateExam.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final club = extra['club'] as ClubModel;

              return CoachExamFormScreen(club: club);
            },
          ),
          GoRoute(
            path: AppRoutes.coachEditExam.path,
            name: AppRoutes.coachEditExam.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final exam = extra['exam'] as ExamModel;
              final club = extra['club'] as ClubModel;

              return CoachExamFormScreen(exam: exam, club: club);
            },
          ),
          GoRoute(
            path: AppRoutes.coachCreateExamQuestion.path,
            name: AppRoutes.coachCreateExamQuestion.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final exam = extra['exam'] as ExamModel;
              final club = extra['club'] as ClubModel;

              return CoachQuestionFormScreen(exam: exam, club: club);
            },
          ),
          GoRoute(
            path: AppRoutes.coachEditExamQuestion.path,
            name: AppRoutes.coachEditExamQuestion.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final questions = extra['questions'] as List<QuestionModel>?;
              final exam = extra['exam'] as ExamModel;
              final club = extra['club'] as ClubModel;

              return CoachQuestionFormScreen(
                exam: exam,
                questions: questions,
                club: club,
              );
            },
          ),
          GoRoute(
            path: AppRoutes.coachExamDetail.path,
            name: AppRoutes.coachExamDetail.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final exam = extra['exam'] as ExamModel;

              return CoachExamDetailScreen(exam: exam);
            },
          ),
        ],
      ),

      /// [Coach Evaluation] routes
      ShellRoute(
        navigatorKey: _coachEvaluationShellKey,
        parentNavigatorKey: _rootKey,
        builder: (context, state, child) {
          final extra = state.extra as Map<String, dynamic>;
          final club = extra['club'] as ClubModel;

          return BlocProvider(
            create: (_) => sl<EvaluationCubit>()
              ..clear()
              ..init(clubId: club.id),
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: AppRoutes.coachExamEvaluation.path,
            name: AppRoutes.coachExamEvaluation.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final club = extra['club'] as ClubModel;

              return CoachEvaluationScreen(club: club);
            },
          ),
          GoRoute(
            path: AppRoutes.coachCreateExamEvaluation.path,
            name: AppRoutes.coachCreateExamEvaluation.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final club = extra['club'] as ClubModel;
              final exam = extra['exam'] as ExamModel;

              return CoachEvaluationFormScreen(club: club, exam: exam);
            },
          ),
        ],
      ),

      /// [Coach Tactical] routes
      ShellRoute(
        navigatorKey: _coachTacticalShellKey,
        parentNavigatorKey: _rootKey,
        builder: (context, state, child) {
          final extra = state.extra as Map<String, dynamic>;
          final club = extra['club'];

          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => sl<TacticalCubit>()
                  ..clear()
                  ..init(clubId: club.id),
              ),
              BlocProvider(
                create: (context) => sl<MediaCubit>()
                  ..init(
                    clubId: club.id,
                    parents: [MediaParent.tactical],
                  ),
              ),
            ],
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: AppRoutes.coachTactical.path,
            name: AppRoutes.coachTactical.name,
            builder: (_, state) {
              final extra = state.extra as Map<String, dynamic>;
              final club = extra['club'];

              return CoachTacticalScreen(club: club);
            },
          ),
          GoRoute(
            path: AppRoutes.coachCreateTactical.path,
            name: AppRoutes.coachCreateTactical.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final club = extra['club'] as ClubModel;

              c.read<TacticalCubit>().clear();

              return CoachTacticalFormScreen(club: club);
            },
          ),
          GoRoute(
            path: AppRoutes.coachEditTactical.path,
            name: AppRoutes.coachEditTactical.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final tactical = extra['tactical'] as TacticalModel;
              final club = extra['club'] as ClubModel;

              c.read<TacticalCubit>().clear();

              return CoachTacticalFormScreen(tactical: tactical, club: club);
            },
          ),
          GoRoute(
            path: AppRoutes.coachStrategyForm.path,
            name: AppRoutes.coachStrategyForm.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final tactical = extra['tactical'] as TacticalModel;
              final screenWidth = extra['screenWidth'] as double;
              final screenHeight = extra['screenHeight'] as double;
              final aspectRatio = extra['aspectRatio'] as double;

              c.read<TacticalCubit>().clear();
              c
                  .read<TacticalCubit>()
                  .initInitialPositions(players: tactical.strategic?.players);

              return CoachStrategyFormScreen(
                tactical: tactical,
                screenSize: Size(screenWidth, screenHeight),
                aspectRatio: aspectRatio,
              );
            },
          ),
          GoRoute(
            path: AppRoutes.coachTacticalDetail.path,
            name: AppRoutes.coachTacticalDetail.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final tactical = extra['tactical'] as TacticalModel;
              final screenWidth = extra['screenWidth'] as double;
              final screenHeight = extra['screenHeight'] as double;
              final aspectRatio = extra['aspectRatio'] as double;

              return TacticalDetailScreen(
                tactical: tactical,
                aspectRatio: aspectRatio,
                screenSize: Size(
                  screenWidth,
                  screenHeight,
                ),
              );
            },
          ),
        ],
      ),

      /// [Coach Asset] routes
      ShellRoute(
        navigatorKey: _coachAssetShellKey,
        parentNavigatorKey: _rootKey,
        builder: (context, state, child) {
          final extra = state.extra as Map<String, dynamic>;
          final club = extra['club'] as ClubModel;

          return BlocProvider(
            create: (_) => sl<MediaCubit>()
              ..init(
                clubId: club.id,
                parents: MediaParent.values,
              ),
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: AppRoutes.coachMedia.path,
            name: AppRoutes.coachMedia.name,
            builder: (c, state) {
              final extra = state.extra as Map<String, dynamic>;
              final club = extra['club'] as ClubModel;

              return AssetsScreen(clubId: club.id);
            },
          ),
        ],
      )
    ],
    routerNeglect: true,
    debugLogDiagnostics: kDebugMode,
    errorBuilder: (context, state) {
      return Scaffold(
        body: Center(
          child: Text(
            'Error: ${state.error}',
            style: const TextStyle(color: Colors.red),
          ),
        ),
      );
    },
    refreshListenable: GoRouterRefreshStream(ctx.read<AuthCubit>().stream),
    // extraCodec: const DotExtraCodec(),
  );
}
