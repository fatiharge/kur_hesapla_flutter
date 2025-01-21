import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/client/kur_hesapla_client.dart';
import 'package:kur_hesapla_api/kur_hesapla_api.dart';

part 'currency_delta_list_event.dart';

part 'currency_delta_list_state.dart';

part 'currency_delta_list_bloc.freezed.dart';

@injectable
class CurrencyDeltaListBloc
    extends Bloc<CurrencyDeltaListEvent, CurrencyDeltaListState> {
  CurrencyDeltaListBloc(this.kurHesaplaClient)
      : super(const CurrencyDeltaListState.initial()) {
    on<_Load>(_onLoad);
  }

  Future<void> _onLoad( _Load event, Emitter<CurrencyDeltaListState> emit) async {
    final startDate = DateTime.now().add(Duration(days: -1)).toDate();
    try {
      final response = await kurHesaplaClient.apiClient
          .getHistoricalCurrencyPriceResourceApi()
          .historicalCurrencyPriceGet(
            endDate: Date.now(),
            startDate: startDate,
          );
      emit(Loaded(historicalPricesResponse: response.data!));
    } on Exception catch (e) {
      emit(Error(exception: e));
    }
  }

  final KurHesaplaClient kurHesaplaClient;
}
