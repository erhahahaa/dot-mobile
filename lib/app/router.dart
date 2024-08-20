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
          path: '/home',
          page: AthleteDashboardRoute.page,
          children: [
            AutoRoute(
              path: '',
              page: AthleteListClubRoute.page,
              children: [
                AutoRoute(
                  path: ':id',
                  page: AthleteDetailClubRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'tactical',
              page: AthleteListTacticalRoute.page,
            ),
            AutoRoute(
              path: 'evaluation',
              page: AthleteListEvaluationRoute.page,
            ),
            AutoRoute(
              path: 'profile',
              page: ProfileRoute.page,
            )
          ],
        )
      ];
}
