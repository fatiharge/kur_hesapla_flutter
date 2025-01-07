import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/app/app.dart';
import 'package:kur_hesapla/app/state/global/bloc/global_bloc.dart';
import 'package:kur_hesapla/ui/route/route_manager.dart';
import 'package:uikit/utility/constant/duration/base_duration.dart';
import 'package:uikit/utility/constant/padding/item_padding.dart';

import 'package:uikit/utility/manager/app_configuration_manager.dart';

final getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  AppConfigurationManager.init(
    itemPadding: ItemPadding(
      xLarge: 29,
    ),
    baseDuration: BaseDuration(
      xLarge: 1000,
    ),
  );

  getIt
    ..registerSingleton<RouteManager>(RouteManager())
    ..registerSingleton<GlobalBloc>(GlobalBloc());

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('tr', 'TR'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('tr', 'TR'),
      child: const App(),
    ),
  );
}
