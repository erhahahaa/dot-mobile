import 'package:auto_route/auto_route.dart';
import 'package:dot_coaching/app/router.gr.dart';
import 'package:injectable/injectable.dart';

@Injectable()
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final _adminShell = const EmptyShellRoute('AdminShellRoute');
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
          page: DashboardRoute.page,
          children: [
            AutoRoute(
              path: 'club',
              page: ListClubRoute.page,
            ),
            AutoRoute(
              path: ':id',
              page: ClubShellRoute.page,
              children: [
                AutoRoute(
                  path: 'program',
                  page: ListProgramRoute.page,
                ),
                AutoRoute(
                  path: 'tactical',
                  page: ListTacticalRoute.page,
                ),
                AutoRoute(
                  path: 'exam',
                  page: ListExamRoute.page,
                ),
                AutoRoute(
                  path: 'evaluation',
                  page: ListEvaluationRoute.page,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          path: '/coach',
          page: DashboardRoute.page,
          children: [
            AutoRoute(
              path: 'club',
              page: ListClubRoute.page,
            ),
            AutoRoute(
              path: ':id',
              page: ClubShellRoute.page,
              children: [
                AutoRoute(
                  path: 'program',
                  page: ListProgramRoute.page,
                ),
                AutoRoute(
                  path: 'tactical',
                  page: ListTacticalRoute.page,
                ),
                AutoRoute(
                  path: 'exam',
                  page: ListExamRoute.page,
                ),
                AutoRoute(
                  path: 'evaluation',
                  page: ListEvaluationRoute.page,
                ),
              ],
            ),
          ],
        ),
      ];
}
