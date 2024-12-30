part of 'global_bloc.dart';

@freezed
class GlobalState with _$GlobalState {
  const factory GlobalState.error({
    Exception? exception,
    Widget? widget,
  }) = GlobalError;

  const factory GlobalState.loading({Widget? widget}) = GlobalLoading;

  const factory GlobalState.success() = GlobalSuccess;
}
