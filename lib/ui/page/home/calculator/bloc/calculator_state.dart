part of 'calculator_bloc.dart';

@freezed
sealed class CalculatorState with _$CalculatorState {
  const factory CalculatorState.error({
    required Exception exception,
  }) = CalculatorError;

  @Implements<LoadingState>()
  const factory CalculatorState.loading() = CalculatorLoading;

  const factory CalculatorState.loaded({
    required FindLatestResponse findLatestResponse,
    required double rate,
    @Default(CurrencyType.USD) CurrencyType currencyType,
    @Default(CurrencyType.EUR) CurrencyType calculatedType,
    @Default('0') String currencyValue,
    @Default('0') String calculatedValue,
  }) = CalculatorLoaded;
}
