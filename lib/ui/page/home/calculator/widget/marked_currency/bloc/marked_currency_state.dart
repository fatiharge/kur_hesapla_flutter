part of 'marked_currency_bloc.dart';

@freezed
class MarkedCurrencyState with _$MarkedCurrencyState {
  const factory MarkedCurrencyState.initial() = Initial;

  const factory MarkedCurrencyState.selected({
    required MarkedCurrency marked,
    required int id,
  }) = Selected;
}
