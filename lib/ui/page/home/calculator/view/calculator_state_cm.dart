import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:kur_hesapla/ui/page/home/calculator/bloc/calculator_bloc.dart';

import 'package:kur_hesapla/ui/route/route_manager.dart';
import 'package:kur_hesapla/ui/route/selector_extension.dart';

extension CalculatorStateCm on CalculatorState {
  Future<void> selectCurrency({
    required BuildContext context,
    bool isCalculated = false,
  }) async {
    final routeManager = GetIt.instance<RouteManager>();

    final selectorExtensionModel = await routeManager.currencyTypeSelector();

    if (selectorExtensionModel == null) return;

    final currentCurrency = isCalculated
        ? (this as CalculatorLoaded).calculatedType
        : (this as CalculatorLoaded).currencyType;

    if (selectorExtensionModel.starryCurrencies != null) {
      final event = CalculatorEvent.changeCurrencyFromStarryCurrencies(
        starryCurrencies: selectorExtensionModel.starryCurrencies!,
      );

      context.read<CalculatorBloc>().add(event);
    } else if (currentCurrency != selectorExtensionModel.currencyType) {
      final event = isCalculated
          ? CalculatorEvent.setCalculatedCurrency(
              currencyType: selectorExtensionModel.currencyType!,
            )
          : CalculatorEvent.setCurrentCurrency(
              currencyType: selectorExtensionModel.currencyType!,
            );

      context.read<CalculatorBloc>().add(event);
    }
  }
}
