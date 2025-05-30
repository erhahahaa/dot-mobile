import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:injectable/injectable.dart';

@Injectable()
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/',
          page: SplashRoute.page,
        ),
        AutoRoute(
          path: '/sign-in',
          page: SignInRoute.page,
        ),
        AutoRoute(
          path: '/sign-up',
          page: SignUpRoute.page,
        ),
        AutoRoute(
          path: '/club',
          page: DashboardRoute.page,
          children: [
            AutoRoute(
              path: '',
              page: ListClubRoute.page,
            ),
            AutoRoute(
              path: 'upsert',
              page: UpsertClubRoute.page,
            ),
            AutoRoute(
              path: ':id',
              page: ClubShellRoute.page,
              children: [
                AutoRoute(
                  path: 'program',
                  page: ProgramShellRoute.page,
                  children: [
                    AutoRoute(
                      path: 'exercise',
                      page: ExerciseShellRoute.page,
                      children: [
                        AutoRoute(
                          path: 'upsert',
                          page: UpsertExerciseRoute.page,
                        ),
                      ],
                    ),
                    AutoRoute(
                      path: '',
                      page: ListProgramRoute.page,
                    ),
                    AutoRoute(
                      path: 'upsert',
                      page: UpsertProgramRoute.page,
                    ),
                    AutoRoute(
                      path: ':id',
                      page: DetailProgramRoute.page,
                    ),
                  ],
                ),
                AutoRoute(
                  path: 'tactical',
                  page: TacticalShellRoute.page,
                  children: [
                    AutoRoute(
                      path: 'strategy',
                      page: StrategyShellRoute.page,
                      children: [
                        AutoRoute(
                          path: 'update',
                          page: UpdateStrategyRoute.page,
                        ),
                      ],
                    ),
                    AutoRoute(
                      path: '',
                      page: ListTacticalRoute.page,
                    ),
                    AutoRoute(
                      path: 'upsert',
                      page: UpsertTacticalRoute.page,
                    ),
                    AutoRoute(
                      path: ':id',
                      page: DetailTacticalRoute.page,
                    ),
                  ],
                ),
                AutoRoute(
                  path: 'exam',
                  page: ExamShellRoute.page,
                  children: [
                    AutoRoute(
                      path: 'question',
                      page: QuestionShellRoute.page,
                      children: [
                        AutoRoute(
                          path: 'upsert',
                          page: UpsertQuestionRoute.page,
                        ),
                      ],
                    ),
                    AutoRoute(
                      path: '',
                      page: ListExamRoute.page,
                    ),
                    AutoRoute(
                      path: 'upsert',
                      page: UpsertExamRoute.page,
                    ),
                    AutoRoute(
                      path: 'evaluation/upsert',
                      page: UpsertEvaluationRoute.page,
                    ),
                    AutoRoute(
                      path: ':id',
                      page: DetailExamRoute.page,
                    ),
                    AutoRoute(
                      path: 'evaluation/:id',
                      page: DetailEvaluationRoute.page,
                    )
                  ],
                ),
                AutoRoute(
                  path: 'media',
                  page: MediaRoute.page,
                ),
                AutoRoute(
                  path: 'detail',
                  page: const EmptyShellRoute('DetailClub').page,
                  children: [
                    AutoRoute(
                      path: '',
                      page: DetailClubRoute.page,
                    ),
                    AutoRoute(
                      path: 'add-member',
                      page: AddMemberRoute.page,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          path: '/profile/update',
          page: UpdateProfileRoute.page,
        ),
      ];
}
