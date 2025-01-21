part of 'chart_bloc.dart';

@freezed
class ChartState with _$ChartState {
  const factory ChartState.initial() = ChartInitial;

  const factory ChartState.loaded({
    required HistoricalPricesResponse historicalPricesResponse,
    required Date startDate,
    required Date endDate,
    @Default(CurrencyType.USD) CurrencyType currencyType,
    @Default(CurrencyType.EUR) CurrencyType secondCurrencyType,
  }) = ChartLoaded;
}
