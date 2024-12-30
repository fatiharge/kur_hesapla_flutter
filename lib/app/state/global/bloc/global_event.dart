part of 'global_bloc.dart';

@freezed
class GlobalEvent with _$GlobalEvent {
  const factory GlobalEvent.load({Widget? widget}) = _GlobalLoadEvent;

  const factory GlobalEvent.success() = _GlobalSuccessEvent;

  const factory GlobalEvent.error({Exception? exception, Widget? widget}) =
      _GlobalErrorEvent;
}
