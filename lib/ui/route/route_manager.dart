import 'package:auto_route/auto_route.dart';
import 'package:kur_hesapla/ui/route/guard/splash_guard.dart';
import 'package:kur_hesapla/ui/route/route_manager.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class RouteManager extends RootStackRouter {
  // @override
  // RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(path: '/home', page: HomeControllerRoute.page),
        AutoRoute(
          path: '/home/selectCurrencyPage',
          page: SelectCurrencyRoute.page,
        ),
        AutoRoute(
          path: '/test',
          page: NewWidgetRoute.page,
        ),
      ];

  @override
  List<AutoRouteGuard> get guards => [SplashGuard()];
}
