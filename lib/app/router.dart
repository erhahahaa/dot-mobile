import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:injectable/injectable.dart';

@Injectable()
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final _adminShell = EmptyShellRoute('AdminShellRoute');
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
          path: '/athlete',
          page: AthleteDashboardRoute.page,
          children: [
            AutoRoute(
              path: 'club',
              page: AthleteListClubRoute.page,
            ),
            AutoRoute(
              path: ':id',
              page: AthleteClubShellRoute.page,
              children: [
                AutoRoute(
                  path: 'program',
                  page: AthleteListProgramRoute.page,
                ),
                AutoRoute(
                  path: 'tactical',
                  page: AthleteListTacticalRoute.page,
                ),
                AutoRoute(
                  path: 'exam',
                  page: AthleteListExamRoute.page,
                ),
                AutoRoute(
                  path: 'evaluation',
                  page: AthleteListEvaluationRoute.page,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          path: '/coach',
          page: CoachDashboardRoute.page,
          children: [
            AutoRoute(
              path: 'club',
              page: CoachListClubRoute.page,
            ),
            AutoRoute(
              path: ':id',
              page: CoachClubShellRoute.page,
              children: [
                AutoRoute(
                  path: 'program',
                  page: CoachListProgramRoute.page,
                ),
                AutoRoute(
                  path: 'tactical',
                  page: CoachListTacticalRoute.page,
                ),
                AutoRoute(
                  path: 'exam',
                  page: CoachListExamRoute.page,
                ),
                AutoRoute(
                  path: 'evaluation',
                  page: CoachListEvaluationRoute.page,
                ),
              ],
            ),
          ],
        ),
      ];
}
