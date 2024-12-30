// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GlobalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget? widget) load,
    required TResult Function() success,
    required TResult Function(Exception? exception, Widget? widget) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget? widget)? load,
    TResult? Function()? success,
    TResult? Function(Exception? exception, Widget? widget)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget? widget)? load,
    TResult Function()? success,
    TResult Function(Exception? exception, Widget? widget)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GlobalLoadEvent value) load,
    required TResult Function(_GlobalSuccessEvent value) success,
    required TResult Function(_GlobalErrorEvent value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GlobalLoadEvent value)? load,
    TResult? Function(_GlobalSuccessEvent value)? success,
    TResult? Function(_GlobalErrorEvent value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GlobalLoadEvent value)? load,
    TResult Function(_GlobalSuccessEvent value)? success,
    TResult Function(_GlobalErrorEvent value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalEventCopyWith<$Res> {
  factory $GlobalEventCopyWith(
          GlobalEvent value, $Res Function(GlobalEvent) then) =
      _$GlobalEventCopyWithImpl<$Res, GlobalEvent>;
}

/// @nodoc
class _$GlobalEventCopyWithImpl<$Res, $Val extends GlobalEvent>
    implements $GlobalEventCopyWith<$Res> {
  _$GlobalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GlobalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GlobalLoadEventImplCopyWith<$Res> {
  factory _$$GlobalLoadEventImplCopyWith(_$GlobalLoadEventImpl value,
          $Res Function(_$GlobalLoadEventImpl) then) =
      __$$GlobalLoadEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Widget? widget});
}

/// @nodoc
class __$$GlobalLoadEventImplCopyWithImpl<$Res>
    extends _$GlobalEventCopyWithImpl<$Res, _$GlobalLoadEventImpl>
    implements _$$GlobalLoadEventImplCopyWith<$Res> {
  __$$GlobalLoadEventImplCopyWithImpl(
      _$GlobalLoadEventImpl _value, $Res Function(_$GlobalLoadEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GlobalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widget = freezed,
  }) {
    return _then(_$GlobalLoadEventImpl(
      widget: freezed == widget
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$GlobalLoadEventImpl implements _GlobalLoadEvent {
  const _$GlobalLoadEventImpl({this.widget});

  @override
  final Widget? widget;

  @override
  String toString() {
    return 'GlobalEvent.load(widget: $widget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalLoadEventImpl &&
            (identical(other.widget, widget) || other.widget == widget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, widget);

  /// Create a copy of GlobalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalLoadEventImplCopyWith<_$GlobalLoadEventImpl> get copyWith =>
      __$$GlobalLoadEventImplCopyWithImpl<_$GlobalLoadEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget? widget) load,
    required TResult Function() success,
    required TResult Function(Exception? exception, Widget? widget) error,
  }) {
    return load(widget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget? widget)? load,
    TResult? Function()? success,
    TResult? Function(Exception? exception, Widget? widget)? error,
  }) {
    return load?.call(widget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget? widget)? load,
    TResult Function()? success,
    TResult Function(Exception? exception, Widget? widget)? error,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(widget);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GlobalLoadEvent value) load,
    required TResult Function(_GlobalSuccessEvent value) success,
    required TResult Function(_GlobalErrorEvent value) error,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GlobalLoadEvent value)? load,
    TResult? Function(_GlobalSuccessEvent value)? success,
    TResult? Function(_GlobalErrorEvent value)? error,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GlobalLoadEvent value)? load,
    TResult Function(_GlobalSuccessEvent value)? success,
    TResult Function(_GlobalErrorEvent value)? error,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _GlobalLoadEvent implements GlobalEvent {
  const factory _GlobalLoadEvent({final Widget? widget}) =
      _$GlobalLoadEventImpl;

  Widget? get widget;

  /// Create a copy of GlobalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GlobalLoadEventImplCopyWith<_$GlobalLoadEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GlobalSuccessEventImplCopyWith<$Res> {
  factory _$$GlobalSuccessEventImplCopyWith(_$GlobalSuccessEventImpl value,
          $Res Function(_$GlobalSuccessEventImpl) then) =
      __$$GlobalSuccessEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GlobalSuccessEventImplCopyWithImpl<$Res>
    extends _$GlobalEventCopyWithImpl<$Res, _$GlobalSuccessEventImpl>
    implements _$$GlobalSuccessEventImplCopyWith<$Res> {
  __$$GlobalSuccessEventImplCopyWithImpl(_$GlobalSuccessEventImpl _value,
      $Res Function(_$GlobalSuccessEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GlobalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GlobalSuccessEventImpl implements _GlobalSuccessEvent {
  const _$GlobalSuccessEventImpl();

  @override
  String toString() {
    return 'GlobalEvent.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GlobalSuccessEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget? widget) load,
    required TResult Function() success,
    required TResult Function(Exception? exception, Widget? widget) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget? widget)? load,
    TResult? Function()? success,
    TResult? Function(Exception? exception, Widget? widget)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget? widget)? load,
    TResult Function()? success,
    TResult Function(Exception? exception, Widget? widget)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GlobalLoadEvent value) load,
    required TResult Function(_GlobalSuccessEvent value) success,
    required TResult Function(_GlobalErrorEvent value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GlobalLoadEvent value)? load,
    TResult? Function(_GlobalSuccessEvent value)? success,
    TResult? Function(_GlobalErrorEvent value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GlobalLoadEvent value)? load,
    TResult Function(_GlobalSuccessEvent value)? success,
    TResult Function(_GlobalErrorEvent value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GlobalSuccessEvent implements GlobalEvent {
  const factory _GlobalSuccessEvent() = _$GlobalSuccessEventImpl;
}

/// @nodoc
abstract class _$$GlobalErrorEventImplCopyWith<$Res> {
  factory _$$GlobalErrorEventImplCopyWith(_$GlobalErrorEventImpl value,
          $Res Function(_$GlobalErrorEventImpl) then) =
      __$$GlobalErrorEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? exception, Widget? widget});
}

/// @nodoc
class __$$GlobalErrorEventImplCopyWithImpl<$Res>
    extends _$GlobalEventCopyWithImpl<$Res, _$GlobalErrorEventImpl>
    implements _$$GlobalErrorEventImplCopyWith<$Res> {
  __$$GlobalErrorEventImplCopyWithImpl(_$GlobalErrorEventImpl _value,
      $Res Function(_$GlobalErrorEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GlobalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? widget = freezed,
  }) {
    return _then(_$GlobalErrorEventImpl(
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      widget: freezed == widget
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$GlobalErrorEventImpl implements _GlobalErrorEvent {
  const _$GlobalErrorEventImpl({this.exception, this.widget});

  @override
  final Exception? exception;
  @override
  final Widget? widget;

  @override
  String toString() {
    return 'GlobalEvent.error(exception: $exception, widget: $widget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalErrorEventImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.widget, widget) || other.widget == widget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, widget);

  /// Create a copy of GlobalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalErrorEventImplCopyWith<_$GlobalErrorEventImpl> get copyWith =>
      __$$GlobalErrorEventImplCopyWithImpl<_$GlobalErrorEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget? widget) load,
    required TResult Function() success,
    required TResult Function(Exception? exception, Widget? widget) error,
  }) {
    return error(exception, widget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Widget? widget)? load,
    TResult? Function()? success,
    TResult? Function(Exception? exception, Widget? widget)? error,
  }) {
    return error?.call(exception, widget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget? widget)? load,
    TResult Function()? success,
    TResult Function(Exception? exception, Widget? widget)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception, widget);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GlobalLoadEvent value) load,
    required TResult Function(_GlobalSuccessEvent value) success,
    required TResult Function(_GlobalErrorEvent value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GlobalLoadEvent value)? load,
    TResult? Function(_GlobalSuccessEvent value)? success,
    TResult? Function(_GlobalErrorEvent value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GlobalLoadEvent value)? load,
    TResult Function(_GlobalSuccessEvent value)? success,
    TResult Function(_GlobalErrorEvent value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _GlobalErrorEvent implements GlobalEvent {
  const factory _GlobalErrorEvent(
      {final Exception? exception,
      final Widget? widget}) = _$GlobalErrorEventImpl;

  Exception? get exception;
  Widget? get widget;

  /// Create a copy of GlobalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GlobalErrorEventImplCopyWith<_$GlobalErrorEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GlobalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, Widget? widget) error,
    required TResult Function(Widget? widget) loading,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception? exception, Widget? widget)? error,
    TResult? Function(Widget? widget)? loading,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, Widget? widget)? error,
    TResult Function(Widget? widget)? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GlobalError value) error,
    required TResult Function(GlobalLoading value) loading,
    required TResult Function(GlobalSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GlobalError value)? error,
    TResult? Function(GlobalLoading value)? loading,
    TResult? Function(GlobalSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GlobalError value)? error,
    TResult Function(GlobalLoading value)? loading,
    TResult Function(GlobalSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalStateCopyWith<$Res> {
  factory $GlobalStateCopyWith(
          GlobalState value, $Res Function(GlobalState) then) =
      _$GlobalStateCopyWithImpl<$Res, GlobalState>;
}

/// @nodoc
class _$GlobalStateCopyWithImpl<$Res, $Val extends GlobalState>
    implements $GlobalStateCopyWith<$Res> {
  _$GlobalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GlobalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GlobalErrorImplCopyWith<$Res> {
  factory _$$GlobalErrorImplCopyWith(
          _$GlobalErrorImpl value, $Res Function(_$GlobalErrorImpl) then) =
      __$$GlobalErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? exception, Widget? widget});
}

/// @nodoc
class __$$GlobalErrorImplCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res, _$GlobalErrorImpl>
    implements _$$GlobalErrorImplCopyWith<$Res> {
  __$$GlobalErrorImplCopyWithImpl(
      _$GlobalErrorImpl _value, $Res Function(_$GlobalErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GlobalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? widget = freezed,
  }) {
    return _then(_$GlobalErrorImpl(
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      widget: freezed == widget
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$GlobalErrorImpl implements GlobalError {
  const _$GlobalErrorImpl({this.exception, this.widget});

  @override
  final Exception? exception;
  @override
  final Widget? widget;

  @override
  String toString() {
    return 'GlobalState.error(exception: $exception, widget: $widget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalErrorImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.widget, widget) || other.widget == widget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, widget);

  /// Create a copy of GlobalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalErrorImplCopyWith<_$GlobalErrorImpl> get copyWith =>
      __$$GlobalErrorImplCopyWithImpl<_$GlobalErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, Widget? widget) error,
    required TResult Function(Widget? widget) loading,
    required TResult Function() success,
  }) {
    return error(exception, widget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception? exception, Widget? widget)? error,
    TResult? Function(Widget? widget)? loading,
    TResult? Function()? success,
  }) {
    return error?.call(exception, widget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, Widget? widget)? error,
    TResult Function(Widget? widget)? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception, widget);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GlobalError value) error,
    required TResult Function(GlobalLoading value) loading,
    required TResult Function(GlobalSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GlobalError value)? error,
    TResult? Function(GlobalLoading value)? loading,
    TResult? Function(GlobalSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GlobalError value)? error,
    TResult Function(GlobalLoading value)? loading,
    TResult Function(GlobalSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GlobalError implements GlobalState {
  const factory GlobalError(
      {final Exception? exception, final Widget? widget}) = _$GlobalErrorImpl;

  Exception? get exception;
  Widget? get widget;

  /// Create a copy of GlobalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GlobalErrorImplCopyWith<_$GlobalErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GlobalLoadingImplCopyWith<$Res> {
  factory _$$GlobalLoadingImplCopyWith(
          _$GlobalLoadingImpl value, $Res Function(_$GlobalLoadingImpl) then) =
      __$$GlobalLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Widget? widget});
}

/// @nodoc
class __$$GlobalLoadingImplCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res, _$GlobalLoadingImpl>
    implements _$$GlobalLoadingImplCopyWith<$Res> {
  __$$GlobalLoadingImplCopyWithImpl(
      _$GlobalLoadingImpl _value, $Res Function(_$GlobalLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GlobalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widget = freezed,
  }) {
    return _then(_$GlobalLoadingImpl(
      widget: freezed == widget
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$GlobalLoadingImpl implements GlobalLoading {
  const _$GlobalLoadingImpl({this.widget});

  @override
  final Widget? widget;

  @override
  String toString() {
    return 'GlobalState.loading(widget: $widget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalLoadingImpl &&
            (identical(other.widget, widget) || other.widget == widget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, widget);

  /// Create a copy of GlobalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalLoadingImplCopyWith<_$GlobalLoadingImpl> get copyWith =>
      __$$GlobalLoadingImplCopyWithImpl<_$GlobalLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, Widget? widget) error,
    required TResult Function(Widget? widget) loading,
    required TResult Function() success,
  }) {
    return loading(widget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception? exception, Widget? widget)? error,
    TResult? Function(Widget? widget)? loading,
    TResult? Function()? success,
  }) {
    return loading?.call(widget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, Widget? widget)? error,
    TResult Function(Widget? widget)? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(widget);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GlobalError value) error,
    required TResult Function(GlobalLoading value) loading,
    required TResult Function(GlobalSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GlobalError value)? error,
    TResult? Function(GlobalLoading value)? loading,
    TResult? Function(GlobalSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GlobalError value)? error,
    TResult Function(GlobalLoading value)? loading,
    TResult Function(GlobalSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GlobalLoading implements GlobalState {
  const factory GlobalLoading({final Widget? widget}) = _$GlobalLoadingImpl;

  Widget? get widget;

  /// Create a copy of GlobalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GlobalLoadingImplCopyWith<_$GlobalLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GlobalSuccessImplCopyWith<$Res> {
  factory _$$GlobalSuccessImplCopyWith(
          _$GlobalSuccessImpl value, $Res Function(_$GlobalSuccessImpl) then) =
      __$$GlobalSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GlobalSuccessImplCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res, _$GlobalSuccessImpl>
    implements _$$GlobalSuccessImplCopyWith<$Res> {
  __$$GlobalSuccessImplCopyWithImpl(
      _$GlobalSuccessImpl _value, $Res Function(_$GlobalSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of GlobalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GlobalSuccessImpl implements GlobalSuccess {
  const _$GlobalSuccessImpl();

  @override
  String toString() {
    return 'GlobalState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GlobalSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception, Widget? widget) error,
    required TResult Function(Widget? widget) loading,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception? exception, Widget? widget)? error,
    TResult? Function(Widget? widget)? loading,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception, Widget? widget)? error,
    TResult Function(Widget? widget)? loading,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GlobalError value) error,
    required TResult Function(GlobalLoading value) loading,
    required TResult Function(GlobalSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GlobalError value)? error,
    TResult? Function(GlobalLoading value)? loading,
    TResult? Function(GlobalSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GlobalError value)? error,
    TResult Function(GlobalLoading value)? loading,
    TResult Function(GlobalSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GlobalSuccess implements GlobalState {
  const factory GlobalSuccess() = _$GlobalSuccessImpl;
}
