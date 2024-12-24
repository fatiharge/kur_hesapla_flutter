part of 'calculator_bloc.dart';

@immutable
sealed class CalculatorState implements BaseStates{}

class CalculatorError extends CalculatorState implements ErrorState {
  CalculatorError({required this.exception});

  @override
  final Exception exception;
}

class CalculatorLoading extends CalculatorState implements LoadingState {}

class CalculatorLoaded extends CalculatorState {
  CalculatorLoaded({required this.findLatestResponse});

  final FindLatestResponse findLatestResponse;
}
