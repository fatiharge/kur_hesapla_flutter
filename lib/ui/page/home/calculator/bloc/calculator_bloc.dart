import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/adapter/marked_currency_adapter.dart';
import 'package:kur_hesapla/app/client/kur_hesapla_client.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/app/mapper/currency_type_mapper.dart';
import 'package:kur_hesapla/app/state/global/bloc/global_bloc.dart';
import 'package:kur_hesapla/data/repository/marked_currency_box.dart';
import 'package:kur_hesapla/ui/page/home/calculator/page/select_currency_page/bloc/select_currency_from_starry/select_starry_cubit.dart';
import 'package:kur_hesapla/ui/page/home/calculator/view/calculator_shimmer.dart';
import 'package:kur_hesapla_api/kur_hesapla_api.dart';

part 'calculator_bloc.freezed.dart';

part 'calculator_event.dart';

part 'calculator_state.dart';

@injectable
class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc({
    required this.kurHesaplaClient,
    required this.markedCurrencyBox,
    required this.markedCurrencyAdapter,
  }) : super(const CalculatorInitial()) {
    on<Load>(_onLoadEvent);
    on<Refresh>(_onRefreshEvent);

    on<SetCurrentCurrency>(_setCurrentCurrency);
    on<SetCalculatedCurrency>(_setCalculatedCurrency);

    on<SetCurrencyValue>(_setCurrencyValue);
    on<SetCalculatedCurrencyValue>(_setCalculatedCurrencyValue);
    on<ChangeCurrency>(_changeCurrency);
    on<ChangeCurrencyFromStarryCurrencies>(_changeCurrencyFromStarryCurrencies);
  }

  final GlobalBloc globalBloc = GetIt.instance<GlobalBloc>();

  final MarkedCurrencyBox markedCurrencyBox;
  final MarkedCurrencyAdapter markedCurrencyAdapter;
  final KurHesaplaClient kurHesaplaClient;

  Future<void> _onLoadEvent(Load event, Emitter<CalculatorState> emit) async {
    globalBloc.add(const GlobalEvent.load(widget: CalculatorShimmer()));
    try {
      final response = await kurHesaplaClient.apiClient
          .getCurrencyPriceResourceApi()
          .currencyPriceGet(baseCurrency: 'USD');

      final findLatestResponse = response.data!;
      final rate = findLatestResponse.data!.EUR!;

      final calculatorLoaded = CalculatorLoaded(
        findLatestResponse: findLatestResponse,
        rate: rate,
        calculatedValue: rate.toStringAsFixed(2),
      );

      globalBloc.add(const GlobalEvent.success());
      emit(calculatorLoaded);
    } on Exception catch (e) {
      globalBloc.add(GlobalEvent.error(exception: e));
    }
  }

  FutureOr<void> _onRefreshEvent(Refresh event, Emitter<CalculatorState> emit) {
    add(const Load());
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

  Future<void> _changeCurrency(
    ChangeCurrency event,
    Emitter<CalculatorState> emit,
  ) async {
    final calculatorLoadedState = state as CalculatorLoaded;

    final rate = _calculateRate(
      currencyType: calculatorLoadedState.calculatedType,
      calculatedType: calculatorLoadedState.currencyType,
      findLatestResponse: calculatorLoadedState.findLatestResponse,
    );

    final value =
        (double.tryParse(calculatorLoadedState.currencyValue) ?? 0) / rate;

    final newState = CalculatorLoaded(
      findLatestResponse: calculatorLoadedState.findLatestResponse,
      rate: rate,
      calculatedValue: value.toStringAsFixed(2),
      currencyValue: calculatorLoadedState.currencyValue,
      currencyType: calculatorLoadedState.calculatedType,
      calculatedType: calculatorLoadedState.currencyType,
    );

    emit(newState);
  }

  Future<void> _changeCurrencyFromStarryCurrencies(
    ChangeCurrencyFromStarryCurrencies event,
    Emitter<CalculatorState> emit,
  ) async {
    final calculatorLoadedState = state as CalculatorLoaded;

    final rate = _calculateRate(
      currencyType: event.starryCurrencies.fCurrencyType,
      calculatedType: event.starryCurrencies.sCurrencyType,
      findLatestResponse: calculatorLoadedState.findLatestResponse,
    );

    final value =
        (double.tryParse(calculatorLoadedState.currencyValue) ?? 0) / rate;

    final newState = CalculatorLoaded(
      findLatestResponse: calculatorLoadedState.findLatestResponse,
      rate: rate,
      calculatedValue: value.toStringAsFixed(2),
      currencyValue: calculatorLoadedState.currencyValue,
      currencyType: event.starryCurrencies.fCurrencyType,
      calculatedType: event.starryCurrencies.sCurrencyType,
    );

    emit(newState);
  }

  double _calculateRate({
    required CurrencyType currencyType,
    required CurrencyType calculatedType,
    required FindLatestResponse findLatestResponse,
  }) {
    final dollarRateSelected =
        currencyType.findValueFindLatestData(findLatestResponse.data!);

    final dollarRateCalculated =
        calculatedType.findValueFindLatestData(findLatestResponse.data!);

    return dollarRateCalculated / dollarRateSelected;
  }
}
