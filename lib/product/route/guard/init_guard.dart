import 'package:auto_route/auto_route.dart';
import 'package:kur_hesapla/app/init/bloc/init_cubit.dart';
import 'package:kur_hesapla/product/route/route_manager.gr.dart';

class InitGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (InitCubit.initCompleted || InitRoute.page.name == resolver.routeName) {
      resolver.next();
    } else {
      router.push(const InitRoute());
    }
  }
}
