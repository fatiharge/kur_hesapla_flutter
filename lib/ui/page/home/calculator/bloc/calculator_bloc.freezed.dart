// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalculatorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(CurrencyType currencyType) setCurrentCurrency,
    required TResult Function(CurrencyType currencyType) setCalculatedCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult? Function(CurrencyType currencyType)? setCalculatedCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult Function(CurrencyType currencyType)? setCalculatedCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetCurrentCurrency value) setCurrentCurrency,
    required TResult Function(SetCalculatedCurrency value)
        setCalculatedCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult? Function(SetCalculatedCurrency value)? setCalculatedCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult Function(SetCalculatedCurrency value)? setCalculatedCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorEventCopyWith<$Res> {
  factory $CalculatorEventCopyWith(
          CalculatorEvent value, $Res Function(CalculatorEvent) then) =
      _$CalculatorEventCopyWithImpl<$Res, CalculatorEvent>;
}

/// @nodoc
class _$CalculatorEventCopyWithImpl<$Res, $Val extends CalculatorEvent>
    implements $CalculatorEventCopyWith<$Res> {
  _$CalculatorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadImpl with DiagnosticableTreeMixin implements Load {
  const _$LoadImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorEvent.load()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CalculatorEvent.load'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(CurrencyType currencyType) setCurrentCurrency,
    required TResult Function(CurrencyType currencyType) setCalculatedCurrency,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult? Function(CurrencyType currencyType)? setCalculatedCurrency,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult Function(CurrencyType currencyType)? setCalculatedCurrency,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetCurrentCurrency value) setCurrentCurrency,
    required TResult Function(SetCalculatedCurrency value)
        setCalculatedCurrency,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult? Function(SetCalculatedCurrency value)? setCalculatedCurrency,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult Function(SetCalculatedCurrency value)? setCalculatedCurrency,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class Load implements CalculatorEvent {
  const factory Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshImpl with DiagnosticableTreeMixin implements Refresh {
  const _$RefreshImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorEvent.refresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CalculatorEvent.refresh'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(CurrencyType currencyType) setCurrentCurrency,
    required TResult Function(CurrencyType currencyType) setCalculatedCurrency,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult? Function(CurrencyType currencyType)? setCalculatedCurrency,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult Function(CurrencyType currencyType)? setCalculatedCurrency,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetCurrentCurrency value) setCurrentCurrency,
    required TResult Function(SetCalculatedCurrency value)
        setCalculatedCurrency,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult? Function(SetCalculatedCurrency value)? setCalculatedCurrency,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult Function(SetCalculatedCurrency value)? setCalculatedCurrency,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements CalculatorEvent, RefreshEvent {
  const factory Refresh() = _$RefreshImpl;
}

/// @nodoc
abstract class _$$SetCurrentCurrencyImplCopyWith<$Res> {
  factory _$$SetCurrentCurrencyImplCopyWith(_$SetCurrentCurrencyImpl value,
          $Res Function(_$SetCurrentCurrencyImpl) then) =
      __$$SetCurrentCurrencyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrencyType currencyType});
}

/// @nodoc
class __$$SetCurrentCurrencyImplCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res, _$SetCurrentCurrencyImpl>
    implements _$$SetCurrentCurrencyImplCopyWith<$Res> {
  __$$SetCurrentCurrencyImplCopyWithImpl(_$SetCurrentCurrencyImpl _value,
      $Res Function(_$SetCurrentCurrencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyType = null,
  }) {
    return _then(_$SetCurrentCurrencyImpl(
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
    ));
  }
}

/// @nodoc

class _$SetCurrentCurrencyImpl
    with DiagnosticableTreeMixin
    implements SetCurrentCurrency {
  const _$SetCurrentCurrencyImpl({required this.currencyType});

  @override
  final CurrencyType currencyType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorEvent.setCurrentCurrency(currencyType: $currencyType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalculatorEvent.setCurrentCurrency'))
      ..add(DiagnosticsProperty('currencyType', currencyType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCurrentCurrencyImpl &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currencyType);

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCurrentCurrencyImplCopyWith<_$SetCurrentCurrencyImpl> get copyWith =>
      __$$SetCurrentCurrencyImplCopyWithImpl<_$SetCurrentCurrencyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(CurrencyType currencyType) setCurrentCurrency,
    required TResult Function(CurrencyType currencyType) setCalculatedCurrency,
  }) {
    return setCurrentCurrency(currencyType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult? Function(CurrencyType currencyType)? setCalculatedCurrency,
  }) {
    return setCurrentCurrency?.call(currencyType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult Function(CurrencyType currencyType)? setCalculatedCurrency,
    required TResult orElse(),
  }) {
    if (setCurrentCurrency != null) {
      return setCurrentCurrency(currencyType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetCurrentCurrency value) setCurrentCurrency,
    required TResult Function(SetCalculatedCurrency value)
        setCalculatedCurrency,
  }) {
    return setCurrentCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult? Function(SetCalculatedCurrency value)? setCalculatedCurrency,
  }) {
    return setCurrentCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult Function(SetCalculatedCurrency value)? setCalculatedCurrency,
    required TResult orElse(),
  }) {
    if (setCurrentCurrency != null) {
      return setCurrentCurrency(this);
    }
    return orElse();
  }
}

abstract class SetCurrentCurrency implements CalculatorEvent {
  const factory SetCurrentCurrency({required final CurrencyType currencyType}) =
      _$SetCurrentCurrencyImpl;

  CurrencyType get currencyType;

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetCurrentCurrencyImplCopyWith<_$SetCurrentCurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCalculatedCurrencyImplCopyWith<$Res> {
  factory _$$SetCalculatedCurrencyImplCopyWith(
          _$SetCalculatedCurrencyImpl value,
          $Res Function(_$SetCalculatedCurrencyImpl) then) =
      __$$SetCalculatedCurrencyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrencyType currencyType});
}

/// @nodoc
class __$$SetCalculatedCurrencyImplCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res, _$SetCalculatedCurrencyImpl>
    implements _$$SetCalculatedCurrencyImplCopyWith<$Res> {
  __$$SetCalculatedCurrencyImplCopyWithImpl(_$SetCalculatedCurrencyImpl _value,
      $Res Function(_$SetCalculatedCurrencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyType = null,
  }) {
    return _then(_$SetCalculatedCurrencyImpl(
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
    ));
  }
}

/// @nodoc

class _$SetCalculatedCurrencyImpl
    with DiagnosticableTreeMixin
    implements SetCalculatedCurrency {
  const _$SetCalculatedCurrencyImpl({required this.currencyType});

  @override
  final CurrencyType currencyType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorEvent.setCalculatedCurrency(currencyType: $currencyType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CalculatorEvent.setCalculatedCurrency'))
      ..add(DiagnosticsProperty('currencyType', currencyType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCalculatedCurrencyImpl &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currencyType);

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCalculatedCurrencyImplCopyWith<_$SetCalculatedCurrencyImpl>
      get copyWith => __$$SetCalculatedCurrencyImplCopyWithImpl<
          _$SetCalculatedCurrencyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(CurrencyType currencyType) setCurrentCurrency,
    required TResult Function(CurrencyType currencyType) setCalculatedCurrency,
  }) {
    return setCalculatedCurrency(currencyType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult? Function(CurrencyType currencyType)? setCalculatedCurrency,
  }) {
    return setCalculatedCurrency?.call(currencyType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult Function(CurrencyType currencyType)? setCalculatedCurrency,
    required TResult orElse(),
  }) {
    if (setCalculatedCurrency != null) {
      return setCalculatedCurrency(currencyType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(Refresh value) refresh,
    required TResult Function(SetCurrentCurrency value) setCurrentCurrency,
    required TResult Function(SetCalculatedCurrency value)
        setCalculatedCurrency,
  }) {
    return setCalculatedCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult? Function(SetCalculatedCurrency value)? setCalculatedCurrency,
  }) {
    return setCalculatedCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult Function(SetCalculatedCurrency value)? setCalculatedCurrency,
    required TResult orElse(),
  }) {
    if (setCalculatedCurrency != null) {
      return setCalculatedCurrency(this);
    }
    return orElse();
  }
}

abstract class SetCalculatedCurrency implements CalculatorEvent {
  const factory SetCalculatedCurrency(
      {required final CurrencyType currencyType}) = _$SetCalculatedCurrencyImpl;

  CurrencyType get currencyType;

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetCalculatedCurrencyImplCopyWith<_$SetCalculatedCurrencyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalculatorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception exception) error,
    required TResult Function() loading,
    required TResult Function(FindLatestResponse findLatestResponse,
            CurrencyType currencyType, CurrencyType calculatedType)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception exception)? error,
    TResult? Function()? loading,
    TResult? Function(FindLatestResponse findLatestResponse,
            CurrencyType currencyType, CurrencyType calculatedType)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception exception)? error,
    TResult Function()? loading,
    TResult Function(FindLatestResponse findLatestResponse,
            CurrencyType currencyType, CurrencyType calculatedType)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculatorError value) error,
    required TResult Function(CalculatorLoading value) loading,
    required TResult Function(CalculatorLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculatorError value)? error,
    TResult? Function(CalculatorLoading value)? loading,
    TResult? Function(CalculatorLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculatorError value)? error,
    TResult Function(CalculatorLoading value)? loading,
    TResult Function(CalculatorLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorStateCopyWith<$Res> {
  factory $CalculatorStateCopyWith(
          CalculatorState value, $Res Function(CalculatorState) then) =
      _$CalculatorStateCopyWithImpl<$Res, CalculatorState>;
}

/// @nodoc
class _$CalculatorStateCopyWithImpl<$Res, $Val extends CalculatorState>
    implements $CalculatorStateCopyWith<$Res> {
  _$CalculatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CalculatorErrorImplCopyWith<$Res> {
  factory _$$CalculatorErrorImplCopyWith(_$CalculatorErrorImpl value,
          $Res Function(_$CalculatorErrorImpl) then) =
      __$$CalculatorErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception exception});
}

/// @nodoc
class __$$CalculatorErrorImplCopyWithImpl<$Res>
    extends _$CalculatorStateCopyWithImpl<$Res, _$CalculatorErrorImpl>
    implements _$$CalculatorErrorImplCopyWith<$Res> {
  __$$CalculatorErrorImplCopyWithImpl(
      _$CalculatorErrorImpl _value, $Res Function(_$CalculatorErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$CalculatorErrorImpl(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$CalculatorErrorImpl
    with DiagnosticableTreeMixin
    implements CalculatorError {
  const _$CalculatorErrorImpl({required this.exception});

  @override
  final Exception exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorState.error(exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalculatorState.error'))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorErrorImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  /// Create a copy of CalculatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorErrorImplCopyWith<_$CalculatorErrorImpl> get copyWith =>
      __$$CalculatorErrorImplCopyWithImpl<_$CalculatorErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception exception) error,
    required TResult Function() loading,
    required TResult Function(FindLatestResponse findLatestResponse,
            CurrencyType currencyType, CurrencyType calculatedType)
        loaded,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception exception)? error,
    TResult? Function()? loading,
    TResult? Function(FindLatestResponse findLatestResponse,
            CurrencyType currencyType, CurrencyType calculatedType)?
        loaded,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception exception)? error,
    TResult Function()? loading,
    TResult Function(FindLatestResponse findLatestResponse,
            CurrencyType currencyType, CurrencyType calculatedType)?
        loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculatorError value) error,
    required TResult Function(CalculatorLoading value) loading,
    required TResult Function(CalculatorLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculatorError value)? error,
    TResult? Function(CalculatorLoading value)? loading,
    TResult? Function(CalculatorLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculatorError value)? error,
    TResult Function(CalculatorLoading value)? loading,
    TResult Function(CalculatorLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CalculatorError implements CalculatorState {
  const factory CalculatorError({required final Exception exception}) =
      _$CalculatorErrorImpl;

  Exception get exception;

  /// Create a copy of CalculatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorErrorImplCopyWith<_$CalculatorErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalculatorLoadingImplCopyWith<$Res> {
  factory _$$CalculatorLoadingImplCopyWith(_$CalculatorLoadingImpl value,
          $Res Function(_$CalculatorLoadingImpl) then) =
      __$$CalculatorLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculatorLoadingImplCopyWithImpl<$Res>
    extends _$CalculatorStateCopyWithImpl<$Res, _$CalculatorLoadingImpl>
    implements _$$CalculatorLoadingImplCopyWith<$Res> {
  __$$CalculatorLoadingImplCopyWithImpl(_$CalculatorLoadingImpl _value,
      $Res Function(_$CalculatorLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CalculatorLoadingImpl
    with DiagnosticableTreeMixin
    implements CalculatorLoading {
  const _$CalculatorLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CalculatorState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CalculatorLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception exception) error,
    required TResult Function() loading,
    required TResult Function(FindLatestResponse findLatestResponse,
            CurrencyType currencyType, CurrencyType calculatedType)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception exception)? error,
    TResult? Function()? loading,
    TResult? Function(FindLatestResponse findLatestResponse,
            CurrencyType currencyType, CurrencyType calculatedType)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception exception)? error,
    TResult Function()? loading,
    TResult Function(FindLatestResponse findLatestResponse,
            CurrencyType currencyType, CurrencyType calculatedType)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculatorError value) error,
    required TResult Function(CalculatorLoading value) loading,
    required TResult Function(CalculatorLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculatorError value)? error,
    TResult? Function(CalculatorLoading value)? loading,
    TResult? Function(CalculatorLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculatorError value)? error,
    TResult Function(CalculatorLoading value)? loading,
    TResult Function(CalculatorLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CalculatorLoading implements CalculatorState, LoadingState {
  const factory CalculatorLoading() = _$CalculatorLoadingImpl;
}

/// @nodoc
abstract class _$$CalculatorLoadedImplCopyWith<$Res> {
  factory _$$CalculatorLoadedImplCopyWith(_$CalculatorLoadedImpl value,
          $Res Function(_$CalculatorLoadedImpl) then) =
      __$$CalculatorLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {FindLatestResponse findLatestResponse,
      CurrencyType currencyType,
      CurrencyType calculatedType});
}

/// @nodoc
class __$$CalculatorLoadedImplCopyWithImpl<$Res>
    extends _$CalculatorStateCopyWithImpl<$Res, _$CalculatorLoadedImpl>
    implements _$$CalculatorLoadedImplCopyWith<$Res> {
  __$$CalculatorLoadedImplCopyWithImpl(_$CalculatorLoadedImpl _value,
      $Res Function(_$CalculatorLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? findLatestResponse = null,
    Object? currencyType = null,
    Object? calculatedType = null,
  }) {
    return _then(_$CalculatorLoadedImpl(
      findLatestResponse: null == findLatestResponse
          ? _value.findLatestResponse
          : findLatestResponse // ignore: cast_nullable_to_non_nullable
              as FindLatestResponse,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
      calculatedType: null == calculatedType
          ? _value.calculatedType
          : calculatedType // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
    ));
  }
}

/// @nodoc

class _$CalculatorLoadedImpl
    with DiagnosticableTreeMixin
    implements CalculatorLoaded {
  const _$CalculatorLoadedImpl(
      {required this.findLatestResponse,
      this.currencyType = CurrencyType.USD,
      this.calculatedType = CurrencyType.EUR});

  @override
  final FindLatestResponse findLatestResponse;
  @override
  @JsonKey()
  final CurrencyType currencyType;
  @override
  @JsonKey()
  final CurrencyType calculatedType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorState.loaded(findLatestResponse: $findLatestResponse, currencyType: $currencyType, calculatedType: $calculatedType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalculatorState.loaded'))
      ..add(DiagnosticsProperty('findLatestResponse', findLatestResponse))
      ..add(DiagnosticsProperty('currencyType', currencyType))
      ..add(DiagnosticsProperty('calculatedType', calculatedType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorLoadedImpl &&
            (identical(other.findLatestResponse, findLatestResponse) ||
                other.findLatestResponse == findLatestResponse) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.calculatedType, calculatedType) ||
                other.calculatedType == calculatedType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, findLatestResponse, currencyType, calculatedType);

  /// Create a copy of CalculatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorLoadedImplCopyWith<_$CalculatorLoadedImpl> get copyWith =>
      __$$CalculatorLoadedImplCopyWithImpl<_$CalculatorLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception exception) error,
    required TResult Function() loading,
    required TResult Function(FindLatestResponse findLatestResponse,
            CurrencyType currencyType, CurrencyType calculatedType)
        loaded,
  }) {
    return loaded(findLatestResponse, currencyType, calculatedType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception exception)? error,
    TResult? Function()? loading,
    TResult? Function(FindLatestResponse findLatestResponse,
            CurrencyType currencyType, CurrencyType calculatedType)?
        loaded,
  }) {
    return loaded?.call(findLatestResponse, currencyType, calculatedType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception exception)? error,
    TResult Function()? loading,
    TResult Function(FindLatestResponse findLatestResponse,
            CurrencyType currencyType, CurrencyType calculatedType)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(findLatestResponse, currencyType, calculatedType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculatorError value) error,
    required TResult Function(CalculatorLoading value) loading,
    required TResult Function(CalculatorLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculatorError value)? error,
    TResult? Function(CalculatorLoading value)? loading,
    TResult? Function(CalculatorLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculatorError value)? error,
    TResult Function(CalculatorLoading value)? loading,
    TResult Function(CalculatorLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CalculatorLoaded implements CalculatorState {
  const factory CalculatorLoaded(
      {required final FindLatestResponse findLatestResponse,
      final CurrencyType currencyType,
      final CurrencyType calculatedType}) = _$CalculatorLoadedImpl;

  FindLatestResponse get findLatestResponse;
  CurrencyType get currencyType;
  CurrencyType get calculatedType;

  /// Create a copy of CalculatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorLoadedImplCopyWith<_$CalculatorLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
