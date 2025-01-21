part of 'calculator_bloc.dart';

@freezed
sealed class CalculatorState with _$CalculatorState {
  const factory CalculatorState.initial() = CalculatorInitial;

  const factory CalculatorState.loaded({
    required FindLatestResponse findLatestResponse,
    required double rate,
    required String calculatedValue,
    @Default(CurrencyType.USD) CurrencyType currencyType,
    @Default(CurrencyType.EUR) CurrencyType calculatedType,
    @Default('1') String currencyValue,
  }) = CalculatorLoaded;
}
