import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kur_hesapla/app/client/kur_hesapla_client.dart';
import 'package:kur_hesapla/app/enum/currency_type.dart';
import 'package:kur_hesapla/app/state/global/bloc/global_bloc.dart';
import 'package:kur_hesapla_api/kur_hesapla_api.dart';

part 'chart_event.dart';

part 'chart_state.dart';

part 'chart_bloc.freezed.dart';

@injectable
class ChartBloc extends Bloc<ChartEvent, ChartState> {
  ChartBloc({required this.kurHesaplaClient})
      : super(const ChartState.initial()) {
    on<Load>(_onLoadEvent);

    on<SetCurrency>(_setCurrency);
    on<SetSecondCurrency>(_setSecondCurrency);
    on<SetDate>(_setDate);
  }

  final GlobalBloc globalBloc = GetIt.instance<GlobalBloc>();
  final KurHesaplaClient kurHesaplaClient;

  Future<void> _onLoadEvent(Load event, Emitter<ChartState> emit) async {
    globalBloc.add(const GlobalEvent.load());
    try {
      final endDate = Date.now();
      final startDate = DateTime.now().add(const Duration(days: -7)).toDate();

      final response = await kurHesaplaClient.apiClient
          .getHistoricalCurrencyPriceResourceApi()
          .historicalCurrencyPriceGet(
            endDate: endDate,
            startDate: startDate,
          );

      final historicalPricesResponse = response.data!;

      final chartLoaded = ChartLoaded(
        historicalPricesResponse: historicalPricesResponse,
        endDate: endDate,
        startDate: startDate,
      );

      globalBloc.add(const GlobalEvent.success());
      emit(chartLoaded);
    } on Exception catch (e) {
      globalBloc.add(GlobalEvent.error(exception: e));
    }
  }

  Future<void> _setCurrency(
    SetCurrency event,
    Emitter<ChartState> emit,
  ) async {
    final chartLoadedState = state as ChartLoaded;

    emit(chartLoadedState.copyWith(currencyType: event.currencyType));
  }

  Future<void> _setSecondCurrency(
    SetSecondCurrency event,
    Emitter<ChartState> emit,
  ) async {
    final chartLoadedState = state as ChartLoaded;

    emit(
      chartLoadedState.copyWith(secondCurrencyType: event.currencyType),
    );
  }

  Future<void> _setDate(
    SetDate event,
    Emitter<ChartState> emit,
  ) async {
    final chartLoadedState = state as ChartLoaded;

    emit(
      chartLoadedState.copyWith(
        endDate: event.endDate,
        startDate: event.startDate,
      ),
    );
  }
}
