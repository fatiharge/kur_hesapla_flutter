import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/rest/currency_price_api_provider.dart';
import 'package:kur_hesapla/rest/kur_hesapla_client.dart';

part 'splash_cubit.part.dart';

class SplashCubit extends Cubit<int> {
  SplashCubit() : super(0);
  static bool initCompleted = false;

  void updateValue(int newValue) {
    if (newValue > 100) return;
    emit(newValue);
  }

  Future<void> start() async {
    final jobs = [
      initEasyLoad,
      // initializeKurHesaplaApi,
      // initializeCurrencyService,
      _wait,
      _wait,
      _wait,
      _wait,
    ];

    await executeJobs(jobs);

    initCompleted = true;

    await _wait();
    while (state < 100) {
      updateValue(state + 1);
      await Future<void>.delayed(const Duration(milliseconds: 100));
    }
  }

  Future<int> _measureExecutionTime(Future<void> Function() function) async {
    final stopwatch = Stopwatch()..start();
    await function();
    stopwatch.stop();
    return stopwatch.elapsedMilliseconds;
  }

  Future<void> executeJobs(
    List<Future<void> Function()> functions,
  ) async {
    final jobs = [
      _wait,
      ...functions,
    ];

    for (final function in jobs) {
      final time = await _measureExecutionTime(function);
      unawaited(_advanceCounter(time, jobs.length));
    }
  }

  Future<void> _advanceCounter(int duration, int functionCount) async {
    final stepPerIncrement = 100 / functionCount;
    final timeByStep = duration ~/ stepPerIncrement;
    for (var i = 0; i < stepPerIncrement; i++) {
      await Future<void>.delayed(Duration(milliseconds: timeByStep));
      updateValue(state + 1);
    }
  }
}
