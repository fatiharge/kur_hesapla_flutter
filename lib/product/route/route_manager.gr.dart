// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:kur_hesapla/app/init/view/init_page.dart' as _i3;
import 'package:kur_hesapla/page/home/calculator/view/calculator_page.dart'
    as _i1;
import 'package:kur_hesapla/page/home/home_controller.dart' as _i2;

/// generated route for
/// [_i1.CalculatorPage]
class CalculatorRoute extends _i4.PageRouteInfo<void> {
  const CalculatorRoute({List<_i4.PageRouteInfo>? children})
      : super(
          CalculatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalculatorRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.CalculatorPage();
    },
  );
}

/// generated route for
/// [_i2.HomeControllerPage]
class HomeControllerRoute extends _i4.PageRouteInfo<void> {
  const HomeControllerRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeControllerRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeControllerRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeControllerPage();
    },
  );
}

/// generated route for
/// [_i3.InitPage]
class InitRoute extends _i4.PageRouteInfo<void> {
  const InitRoute({List<_i4.PageRouteInfo>? children})
      : super(
          InitRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.InitPage();
    },
  );
}
