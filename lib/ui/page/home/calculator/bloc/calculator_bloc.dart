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
import 'package:kur_hesapla/data/entity/marked_currency.dart';
import 'package:kur_hesapla/generated/objectbox.g.dart';
import 'package:kur_hesapla/service/marked_currency_service.dart';
import 'package:kur_hesapla/ui/page/home/calculator/view/calculator_shimmer.dart';
import 'package:openapi/openapi.dart';

part 'calculator_bloc.freezed.dart';

part 'calculator_event.dart';

part 'calculator_state.dart';

@injectable
class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc({
    required this.kurHesaplaClient,
    required this.markedCurrencyService,
    required this.markedCurrencyAdapter,
  }) : super(const CalculatorInitial()) {
    watchedMarkedCurrency =
        markedCurrencyService.boxRepository.box.query().watch();

    subscribeMarkedCurrency = watchedMarkedCurrency.listen(
      (Query<MarkedCurrency> query) async => _listenEventTrigger(query),
    );

    on<Load>(_onLoadEvent);
    on<Refresh>(_onRefreshEvent);

    on<SetCurrentCurrency>(_setCurrentCurrency);
    on<SetCalculatedCurrency>(_setCalculatedCurrency);

    on<SetCurrencyValue>(_setCurrencyValue);
    on<SetCalculatedCurrencyValue>(_setCalculatedCurrencyValue);

    on<PutMarkedCurrency>(_putMarkedCurrency);
    on<RemoveMarkedCurrency>(_removeMarkedCurrency);
    on<ClearMarked>(_clearMarked);
  }

  late final Stream<Query<MarkedCurrency>> watchedMarkedCurrency;
  late final StreamSubscription<Query<MarkedCurrency>> subscribeMarkedCurrency;
  final GlobalBloc globalBloc = GetIt.instance<GlobalBloc>();

  final MarkedCurrencyService markedCurrencyService;
  final MarkedCurrencyAdapter markedCurrencyAdapter;
  final KurHesaplaClient kurHesaplaClient;

  @override
  Future<void> close() {
    subscribeMarkedCurrency.cancel();
    return super.close();
  }

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
        isMarked: false,
        markedId: null,
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
        isMarked: false,
        markedId: null,
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
      isMarked: false,
      markedId: null,
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
      isMarked: false,
      markedId: null,
    );

    emit(newState);
  }

  Future<void> _putMarkedCurrency(
    PutMarkedCurrency event,
    Emitter<CalculatorState> emit,
  ) async {
    final id = markedCurrencyService.putMarkedCurrency(
      markedCurrency: markedCurrencyAdapter.calculatorLoadedAdaptee(
        event.calculatorLoadedState,
      ),
    );
    final calculatorLoadedState = state as CalculatorLoaded;
    emit(
      calculatorLoadedState.copyWith(
        isMarked: true,
        markedId: id,
      ),
    );
  }

  Future<void> _removeMarkedCurrency(
    RemoveMarkedCurrency event,
    Emitter<CalculatorState> emit,
  ) async {
    final calculatorLoadedState = state as CalculatorLoaded;
    markedCurrencyService.boxRepository.box.remove(event.id);
    emit(
      calculatorLoadedState.copyWith(
        isMarked: false,
        markedId: null,
      ),
    );
  }

  Future<void> _clearMarked(
    ClearMarked event,
    Emitter<CalculatorState> emit,
  ) async {
    final calculatorLoadedState = state as CalculatorLoaded;
    emit(
      calculatorLoadedState.copyWith(
        isMarked: false,
        markedId: null,
      ),
    );
  }

  double _calculateRate({
    required CurrencyType currencyType,
    required CurrencyType calculatedType,
    required FindLatestResponse findLatestResponse,
  }) {
    final dollarRateSelected = currencyType.findValue(findLatestResponse.data!);

    final dollarRateCalculated =
        calculatedType.findValue(findLatestResponse.data!);

    return dollarRateCalculated / dollarRateSelected;
  }

  void _listenEventTrigger(Query<MarkedCurrency> query) {
    if (state is CalculatorLoaded) {
      final calculatorLoadedState = state as CalculatorLoaded;
      final q = query.find().where(
            (element) => calculatorLoadedState.markedId == element.id,
          );
      if (q.isEmpty) {
        add(const ClearMarked()); // yok birrrrr dilegimmm hayatta hersey kismet
      }
    }
  }
}
