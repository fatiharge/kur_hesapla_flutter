part of 'init_cubit.dart';

Future<void> _wait() async {
  await Future<void>.delayed(const Duration(milliseconds: 800));
  // await Future<void>.delayed(const Duration(milliseconds: 100));
}

Future<void> initEasyLoad() async {
  EasyLoading.instance
    ..loadingStyle = EasyLoadingStyle.light
    ..maskType = EasyLoadingMaskType.black
    ..indicatorType = EasyLoadingIndicatorType.pulse
    ..animationStyle = EasyLoadingAnimationStyle.opacity
    ..userInteractions = false;
}

Future<void> initializeCurrencyService() async {
  final instance = CurrencyPriceApiProvider();
  GetIt.I.registerSingleton<CurrencyPriceApiProvider>(instance);
}

Future<void> initializeKurHesaplaApi() async {
  final instance = KurHesaplaClient();
  GetIt.I.registerSingleton<KurHesaplaClient>(instance);
}
