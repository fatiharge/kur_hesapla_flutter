// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:kur_hesapla/app/splash/view/splash_page.dart' as _i5;
import 'package:kur_hesapla/page/home/calculator/view/calculator_page.dart'
    as _i1;
import 'package:kur_hesapla/page/home/chart/view/chart_page.dart' as _i2;
import 'package:kur_hesapla/page/home/home_controller.dart' as _i3;
import 'package:kur_hesapla/page/home/marked/view/marked_page.dart' as _i4;

/// generated route for
/// [_i1.CalculatorPage]
class CalculatorRoute extends _i6.PageRouteInfo<void> {
  const CalculatorRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CalculatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalculatorRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.CalculatorPage();
    },
  );
}

/// generated route for
/// [_i2.ChartPage]
class ChartRoute extends _i6.PageRouteInfo<void> {
  const ChartRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ChartRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChartRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.ChartPage();
    },
  );
}

/// generated route for
/// [_i3.HomeControllerPage]
class HomeControllerRoute extends _i6.PageRouteInfo<void> {
  const HomeControllerRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeControllerRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeControllerRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeControllerPage();
    },
  );
}

/// generated route for
/// [_i4.MarkedPage]
class MarkedRoute extends _i6.PageRouteInfo<void> {
  const MarkedRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MarkedRoute.name,
          initialChildren: children,
        );

  static const String name = 'MarkedRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.MarkedPage();
    },
  );
}

/// generated route for
/// [_i5.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SplashPage();
    },
  );
}
