import 'package:auto_route/auto_route.dart';
import 'package:kur_hesapla/product/route/guard/splash_guard.dart';
import 'package:kur_hesapla/product/route/route_manager.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class RouteManager extends RootStackRouter {
  // @override
  // RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeControllerRoute.page,
          initial: true,
        ),
        AutoRoute(path: '/splash', page: SplashRoute.page),
      ];

  @override
  List<AutoRouteGuard> get guards => [SplashGuard()];
}
