part of 'currency_delta_list_bloc.dart';

@freezed
class CurrencyDeltaListState with _$CurrencyDeltaListState {
  const factory CurrencyDeltaListState.initial() = Initial;

  const factory CurrencyDeltaListState.loaded({
    required HistoricalPricesResponse historicalPricesResponse,
  }) = Loaded;

  const factory CurrencyDeltaListState.error({
    required Exception exception,
  }) = Error;
}
