part of 'chart_bloc.dart';

@freezed
class ChartEvent with _$ChartEvent {
  const factory ChartEvent.load() = Load;

  const factory ChartEvent.setCurrency({
    required CurrencyType currencyType,
  }) = SetCurrency;

  const factory ChartEvent.setSecondCurrency({
    required CurrencyType currencyType,
  }) = SetSecondCurrency;

  const factory ChartEvent.setDate({
    required Date startDate,
    required Date endDate,
  }) = SetDate;

}
