part of 'calculator_bloc.dart';

@freezed
sealed class CalculatorEvent with _$CalculatorEvent {
  const factory CalculatorEvent.load() = Load;

  const factory CalculatorEvent.refresh() = Refresh;

  const factory CalculatorEvent.setCurrentCurrency({
    required CurrencyType currencyType,
  }) = SetCurrentCurrency;

  const factory CalculatorEvent.setCalculatedCurrency({
    required CurrencyType currencyType,
  }) = SetCalculatedCurrency;

  const factory CalculatorEvent.setCurrencyValue({
    required String value,
  }) = SetCurrencyValue;

  const factory CalculatorEvent.setCalculatedCurrencyValue({
    required String value,
  }) = SetCalculatedCurrencyValue;

  const factory CalculatorEvent.changeCurrency() = ChangeCurrency;

  const factory CalculatorEvent.changeCurrencyFromStarryCurrencies({
    required StarryCurrencies starryCurrencies,
  }) = ChangeCurrencyFromStarryCurrencies;
}
