part of 'starry_currency_bloc.dart';

@freezed
class StarryCurrencyEvent with _$StarryCurrencyEvent {
  const factory StarryCurrencyEvent.clear() = _Clear;

  const factory StarryCurrencyEvent.select({
    required StarryCurrency starryCurrency,
  }) = _Select;

  const factory StarryCurrencyEvent.diSelect({
    required int id,
  }) = _DiSelect;

  const factory StarryCurrencyEvent.init({
    required CurrencyType currencyType,
    required CurrencyType calculatedCurrencyType,
  }) = _Init;
}
