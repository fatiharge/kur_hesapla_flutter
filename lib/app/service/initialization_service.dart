import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';

@injectable
class InitializationService {
  Future<void> initEasyLoad() async {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.light
      ..maskType = EasyLoadingMaskType.black
      ..indicatorType = EasyLoadingIndicatorType.pulse
      ..animationStyle = EasyLoadingAnimationStyle.opacity
      ..userInteractions = false;
  }
}
