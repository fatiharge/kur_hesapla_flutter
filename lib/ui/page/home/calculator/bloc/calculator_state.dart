part of 'calculator_bloc.dart';

// @immutable
// sealed class CalculatorState implements BaseStates{}
//
// class CalculatorError extends CalculatorState implements ErrorState {
//   CalculatorError({required this.exception});
//
//   @override
//   final Exception exception;
// }
//
// class CalculatorLoading extends CalculatorState implements LoadingState {}
//
// class CalculatorLoaded extends CalculatorState {
//   CalculatorLoaded({required this.findLatestResponse});
//
//   final FindLatestResponse findLatestResponse;
//   final CurrencyType currencyType = CurrencyType.USD;
//   final CurrencyType calculatedType = CurrencyType.EUR;
// }

@freezed
sealed class CalculatorState with _$CalculatorState {
  const factory CalculatorState.error({
    required Exception exception,
  }) = CalculatorError;

  @Implements<LoadingState>()
  const factory CalculatorState.loading() = CalculatorLoading;

  const factory CalculatorState.loaded({
    required FindLatestResponse findLatestResponse,
    @Default(CurrencyType.USD) CurrencyType currencyType,
    @Default(CurrencyType.EUR) CurrencyType calculatedType,
  }) = CalculatorLoaded;
}
