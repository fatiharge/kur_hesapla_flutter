import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/service/kur_hesapla_client/currency_price_resource_api_service.dart';
import 'package:kur_hesapla/ui/abstract/base_event.dart' as base_event;
import 'package:kur_hesapla/ui/abstract/base_states.dart';
import 'package:openapi/openapi.dart';

part 'calculator_event.dart';

part 'calculator_state.dart';

@injectable
class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc({
    required this.currencyPriceResourceApiService,
  }) : super(CalculatorLoading()) {
    on<LoadEvent>(_onLoadEvent);
    on<RefreshEvent>(_onRefreshEvent);
  }

  final CurrencyPriceResourceApiService currencyPriceResourceApiService;

  FutureOr<void> _onRefreshEvent(
    RefreshEvent event,
    Emitter<CalculatorState> emit,
  ) {
    add(LoadEvent());
  }

  Future<void> _onLoadEvent(
    LoadEvent event,
    Emitter<CalculatorState> emit,
  ) async {
    emit(CalculatorLoading());
    // await Future<void>.delayed(const Duration(seconds: 1));
    // emit(CalculatorError(exception: Exception()));

    // try {
    //   emit(
    //     CalculatorLoaded(
    //       findLatestResponse:
    //           await currencyPriceResourceApiService.getFindLatestResponse(),
    //     ),
    //   );
    // } on Exception catch (e) {
    //   emit(CalculatorError(exception: e));
    // }//todo
  }
}
