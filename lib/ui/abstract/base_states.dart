abstract class BaseStates {}

abstract class LoadingState implements BaseStates {}

abstract class ErrorState extends BaseStates {
  ErrorState(this.exception);

  final Exception exception;
}
