import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:kur_hesapla/data/objectbox.dart';

@injectable
class InitializationService {
  List<Future<void> Function()> get jobs => [
        _wait,
        initObjectBox,
        _wait,
      ];

  Future<void> initObjectBox() async {
    GetIt.instance.registerSingleton<ObjectBox>(await ObjectBox.create());
  }

  Future<void> _wait() async {
    await Future<void>.delayed(Durations.medium2);
  }
}
