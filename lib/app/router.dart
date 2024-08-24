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
          path: '/athlete',
          page: AthleteDashboardRoute.page,
          children: [
            AutoRoute(
              path: 'club',
              page: AthleteClubShellRoute.page,
              children: [
                AutoRoute(
                  path: '',
                  page: AthleteListClubRoute.page,
                ),
                AutoRoute(
                  path: ':id/program',
                  page: AthleteListProgramRoute.page,
                ),
                RedirectRoute(
                  path: '*',
                  redirectTo: '',
                ),
              ],
            ),
            AutoRoute(
              path: 'tactical',
              page: AthleteTacticalShellRoute.page,
              children: [
                AutoRoute(
                  path: '',
                  page: AthleteListTacticalRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'evaluation',
              page: AthleteEvaluationShellRoute.page,
              children: [
                AutoRoute(
                  path: '',
                  page: AthleteListEvaluationRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'profile',
              page: ProfileRoute.page,
            )
          ],
        )
      ];
}
