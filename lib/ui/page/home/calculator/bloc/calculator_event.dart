part of 'calculator_bloc.dart';

@immutable
sealed class CalculatorEvent {}

class LoadEvent extends CalculatorEvent implements base_event.LoadEvent {}

class RefreshEvent extends CalculatorEvent implements base_event.RefreshEvent {}
