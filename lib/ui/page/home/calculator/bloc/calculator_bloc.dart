import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/app/service/kur_hesapla_client/currency_price_resource_api_service.dart';
import 'package:kur_hesapla/ui/abstract/base_event.dart';
import 'package:kur_hesapla/ui/abstract/base_states.dart';
import 'package:openapi/openapi.dart';

part 'calculator_bloc.freezed.dart';

part 'calculator_event.dart';

part 'calculator_state.dart';

@injectable
class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc({
    required this.currencyPriceResourceApiService,
  }) : super(const CalculatorLoading()) {
    on<Load>(_onLoadEvent);
    on<Refresh>(_onRefreshEvent);
    on<SetCurrentCurrency>(_onSelectCurrentCurrencyEvent);
    on<SetCalculatedCurrency>(_onSelectCalculatedCurrencyEvent);
  }

  final CurrencyPriceResourceApiService currencyPriceResourceApiService;

  FutureOr<void> _onSelectCalculatedCurrencyEvent(
    SetCalculatedCurrency event,
    Emitter<CalculatorState> emit,
  ) {
    final calculatorLoadedState = state as CalculatorLoaded;

    emit(calculatorLoadedState.copyWith(calculatedType: event.currencyType));
  }

  FutureOr<void> _onSelectCurrentCurrencyEvent(
    SetCurrentCurrency event,
    Emitter<CalculatorState> emit,
  ) {
    final calculatorLoadedState = state as CalculatorLoaded;

    emit(calculatorLoadedState.copyWith(currencyType: event.currencyType));
  }

  FutureOr<void> _onRefreshEvent(
    Refresh event,
    Emitter<CalculatorState> emit,
  ) {
    add(const Load());
  }

  Future<void> _onLoadEvent(
    Load event,
    Emitter<CalculatorState> emit,
  ) async {
    emit(const CalculatorLoading());

    final findLatestResponse =
        await currencyPriceResourceApiService.getFindLatestResponse();

    final calculatorLoaded =
        CalculatorLoaded(findLatestResponse: findLatestResponse);

    try {
      emit(calculatorLoaded);
    } on Exception catch (e) {
      emit(CalculatorError(exception: e));
    }
  }
}
