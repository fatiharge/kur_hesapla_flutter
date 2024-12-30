import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/app/service/kur_hesapla_client/currency_price_resource_api_service.dart';
import 'package:kur_hesapla/app/state/global/bloc/global_bloc.dart';
import 'package:kur_hesapla/ui/page/home/calculator/view/calculator_shimmer.dart';
import 'package:openapi/openapi.dart';

part 'calculator_bloc.freezed.dart';

part 'calculator_event.dart';

part 'calculator_state.dart';

@injectable
class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc({
    required this.currencyPriceResourceApiService,
  }) : super(const CalculatorInitial()) {
    on<Load>(_onLoadEvent);
    on<Refresh>(_onRefreshEvent);

    on<SetCurrentCurrency>(_setCurrentCurrency);
    on<SetCalculatedCurrency>(_setCalculatedCurrency);

    on<SetCurrencyValue>(_setCurrencyValue);
    on<SetCalculatedCurrencyValue>(_setCalculatedCurrencyValue);
  }

  final GlobalBloc globalBloc = GetIt.instance<GlobalBloc>();

  final CurrencyPriceResourceApiService currencyPriceResourceApiService;

  FutureOr<void> _setCurrencyValue(
    SetCurrencyValue event,
    Emitter<CalculatorState> emit,
  ) {
    final calculatorLoadedState = state as CalculatorLoaded;

    final value =
        (double.tryParse(event.value) ?? 0) * calculatorLoadedState.rate;

    final newState = calculatorLoadedState.copyWith(
      currencyValue: event.value,
      calculatedValue: value.toStringAsFixed(2),
    );

    emit(newState);
  }

  FutureOr<void> _setCalculatedCurrencyValue(
    SetCalculatedCurrencyValue event,
    Emitter<CalculatorState> emit,
  ) {
    final calculatorLoadedState = state as CalculatorLoaded;

    final value =
        (double.tryParse(event.value) ?? 0) / calculatorLoadedState.rate;

    final newState = calculatorLoadedState.copyWith(
      currencyValue: value.toStringAsFixed(2),
      calculatedValue: event.value,
    );

    emit(newState);
  }

  FutureOr<void> _setCurrentCurrency(
    SetCurrentCurrency event,
    Emitter<CalculatorState> emit,
  ) {
    final calculatorLoadedState = state as CalculatorLoaded;

    final rate = _calculateRate(
      currencyType: event.currencyType,
      calculatedType: calculatorLoadedState.calculatedType,
      findLatestResponse: calculatorLoadedState.findLatestResponse,
    );

    final calculatedValue =
        (double.tryParse(calculatorLoadedState.currencyValue) ?? 0) * rate;

    emit(
      calculatorLoadedState.copyWith(
        currencyType: event.currencyType,
        rate: rate,
        calculatedValue: calculatedValue.toStringAsFixed(2),
      ),
    );
  }

  FutureOr<void> _setCalculatedCurrency(
    SetCalculatedCurrency event,
    Emitter<CalculatorState> emit,
  ) {
    final calculatorLoadedState = state as CalculatorLoaded;

    final rate = _calculateRate(
      currencyType: calculatorLoadedState.currencyType,
      calculatedType: event.currencyType,
      findLatestResponse: calculatorLoadedState.findLatestResponse,
    );

    final calculatedValue =
        (double.tryParse(calculatorLoadedState.currencyValue) ?? 0) * rate;

    emit(
      calculatorLoadedState.copyWith(
        calculatedType: event.currencyType,
        rate: rate,
        calculatedValue: calculatedValue.toStringAsFixed(2),
      ),
    );
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
    globalBloc.add(const GlobalEvent.load(widget: CalculatorShimmer()));
    final findLatestResponse =
        await currencyPriceResourceApiService.getFindLatestResponse();

    final rate = double.parse(findLatestResponse.data!.EUR!);

    final calculatorLoaded = CalculatorLoaded(
      findLatestResponse: findLatestResponse,
      rate: rate,
    );
    try {
      globalBloc.add(const GlobalEvent.success());
      emit(calculatorLoaded);
    } on Exception catch (e) {
      globalBloc.add(GlobalEvent.error(exception: e));
    }
  }

  double _calculateRate({
    required CurrencyType currencyType,
    required CurrencyType calculatedType,
    required FindLatestResponse findLatestResponse,
  }) {
    final dollarRateSelected = double.parse(
      currencyType.findValue(findLatestResponse),
    );

    final dollarRateCalculated = double.parse(
      calculatedType.findValue(findLatestResponse),
    );

    return dollarRateCalculated / dollarRateSelected;
  }
}
