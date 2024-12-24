import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kur_hesapla/app/config/injectable.dart';
import 'package:kur_hesapla/app/service/initialization_service.dart';

class SplashCubit extends Cubit<int> {
  SplashCubit() : super(0);
  static bool initCompleted = false;

  void updateValue(int newValue) {
    if (newValue > 100) return;
    emit(newValue);
  }

  Future<void> start() async {
    configureDependencies();
    final initializationService = GetIt.instance<InitializationService>();
    final jobs = [
      initializationService.initEasyLoad,
      wait,
      wait,
      wait,
      wait,
    ];

    await executeJobs(jobs);

    initCompleted = true;

    await wait();
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
      // await Future<void>.delayed(const Duration(milliseconds: 5000)),
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

  Future<void> wait() async {
    await Future<void>.delayed(const Duration(milliseconds: 800));
    // await Future<void>.delayed(const Duration(milliseconds: 100));
  }
}
