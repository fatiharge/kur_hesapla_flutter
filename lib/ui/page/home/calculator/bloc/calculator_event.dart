part of 'calculator_bloc.dart';

@freezed
sealed class CalculatorEvent with _$CalculatorEvent {
  const factory CalculatorEvent.load() = Load;

  @Implements<RefreshEvent>()
  const factory CalculatorEvent.refresh() = Refresh;

  const factory CalculatorEvent.setCurrentCurrency({
    required CurrencyType currencyType,
  }) = SetCurrentCurrency;

  const factory CalculatorEvent.setCalculatedCurrency({
    required CurrencyType currencyType,
  }) = SetCalculatedCurrency;
}
