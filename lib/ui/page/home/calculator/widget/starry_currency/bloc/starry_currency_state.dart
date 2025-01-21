part of 'starry_currency_bloc.dart';

@freezed
class StarryCurrencyState with _$StarryCurrencyState {
  const factory StarryCurrencyState.initial() = Initial;

  const factory StarryCurrencyState.selected({
    required StarryCurrency starry,
    required int id,
  }) = Selected;
}