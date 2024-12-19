import 'package:auto_route/auto_route.dart';
import 'package:kur_hesapla/app/splash/bloc/splash_cubit.dart';
import 'package:kur_hesapla/product/route/route_manager.gr.dart';

class SplashGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (SplashCubit.initCompleted ||
        SplashRoute.page.name == resolver.routeName) {
      resolver.next();
    } else {
      router.push(const SplashRoute());
    }
  }
}
