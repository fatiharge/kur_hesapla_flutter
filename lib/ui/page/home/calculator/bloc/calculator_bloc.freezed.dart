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
    required TResult Function(String value) setCurrencyValue,
    required TResult Function(String value) setCalculatedCurrencyValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult? Function(CurrencyType currencyType)? setCalculatedCurrency,
    TResult? Function(String value)? setCurrencyValue,
    TResult? Function(String value)? setCalculatedCurrencyValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult Function(CurrencyType currencyType)? setCalculatedCurrency,
    TResult Function(String value)? setCurrencyValue,
    TResult Function(String value)? setCalculatedCurrencyValue,
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
    required TResult Function(SetCurrencyValue value) setCurrencyValue,
    required TResult Function(SetCalculatedCurrencyValue value)
        setCalculatedCurrencyValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult? Function(SetCalculatedCurrency value)? setCalculatedCurrency,
    TResult? Function(SetCurrencyValue value)? setCurrencyValue,
    TResult? Function(SetCalculatedCurrencyValue value)?
        setCalculatedCurrencyValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult Function(SetCalculatedCurrency value)? setCalculatedCurrency,
    TResult Function(SetCurrencyValue value)? setCurrencyValue,
    TResult Function(SetCalculatedCurrencyValue value)?
        setCalculatedCurrencyValue,
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
    required TResult Function(String value) setCurrencyValue,
    required TResult Function(String value) setCalculatedCurrencyValue,
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
    TResult? Function(String value)? setCurrencyValue,
    TResult? Function(String value)? setCalculatedCurrencyValue,
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
    TResult Function(String value)? setCurrencyValue,
    TResult Function(String value)? setCalculatedCurrencyValue,
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
    required TResult Function(SetCurrencyValue value) setCurrencyValue,
    required TResult Function(SetCalculatedCurrencyValue value)
        setCalculatedCurrencyValue,
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
    TResult? Function(SetCurrencyValue value)? setCurrencyValue,
    TResult? Function(SetCalculatedCurrencyValue value)?
        setCalculatedCurrencyValue,
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
    TResult Function(SetCurrencyValue value)? setCurrencyValue,
    TResult Function(SetCalculatedCurrencyValue value)?
        setCalculatedCurrencyValue,
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
    required TResult Function(String value) setCurrencyValue,
    required TResult Function(String value) setCalculatedCurrencyValue,
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
    TResult? Function(String value)? setCurrencyValue,
    TResult? Function(String value)? setCalculatedCurrencyValue,
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
    TResult Function(String value)? setCurrencyValue,
    TResult Function(String value)? setCalculatedCurrencyValue,
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
    required TResult Function(SetCurrencyValue value) setCurrencyValue,
    required TResult Function(SetCalculatedCurrencyValue value)
        setCalculatedCurrencyValue,
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
    TResult? Function(SetCurrencyValue value)? setCurrencyValue,
    TResult? Function(SetCalculatedCurrencyValue value)?
        setCalculatedCurrencyValue,
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
    TResult Function(SetCurrencyValue value)? setCurrencyValue,
    TResult Function(SetCalculatedCurrencyValue value)?
        setCalculatedCurrencyValue,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements CalculatorEvent {
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
    required TResult Function(String value) setCurrencyValue,
    required TResult Function(String value) setCalculatedCurrencyValue,
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
    TResult? Function(String value)? setCurrencyValue,
    TResult? Function(String value)? setCalculatedCurrencyValue,
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
    TResult Function(String value)? setCurrencyValue,
    TResult Function(String value)? setCalculatedCurrencyValue,
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
    required TResult Function(SetCurrencyValue value) setCurrencyValue,
    required TResult Function(SetCalculatedCurrencyValue value)
        setCalculatedCurrencyValue,
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
    TResult? Function(SetCurrencyValue value)? setCurrencyValue,
    TResult? Function(SetCalculatedCurrencyValue value)?
        setCalculatedCurrencyValue,
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
    TResult Function(SetCurrencyValue value)? setCurrencyValue,
    TResult Function(SetCalculatedCurrencyValue value)?
        setCalculatedCurrencyValue,
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
    required TResult Function(String value) setCurrencyValue,
    required TResult Function(String value) setCalculatedCurrencyValue,
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
    TResult? Function(String value)? setCurrencyValue,
    TResult? Function(String value)? setCalculatedCurrencyValue,
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
    TResult Function(String value)? setCurrencyValue,
    TResult Function(String value)? setCalculatedCurrencyValue,
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
    required TResult Function(SetCurrencyValue value) setCurrencyValue,
    required TResult Function(SetCalculatedCurrencyValue value)
        setCalculatedCurrencyValue,
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
    TResult? Function(SetCurrencyValue value)? setCurrencyValue,
    TResult? Function(SetCalculatedCurrencyValue value)?
        setCalculatedCurrencyValue,
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
    TResult Function(SetCurrencyValue value)? setCurrencyValue,
    TResult Function(SetCalculatedCurrencyValue value)?
        setCalculatedCurrencyValue,
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
abstract class _$$SetCurrencyValueImplCopyWith<$Res> {
  factory _$$SetCurrencyValueImplCopyWith(_$SetCurrencyValueImpl value,
          $Res Function(_$SetCurrencyValueImpl) then) =
      __$$SetCurrencyValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SetCurrencyValueImplCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res, _$SetCurrencyValueImpl>
    implements _$$SetCurrencyValueImplCopyWith<$Res> {
  __$$SetCurrencyValueImplCopyWithImpl(_$SetCurrencyValueImpl _value,
      $Res Function(_$SetCurrencyValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SetCurrencyValueImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetCurrencyValueImpl
    with DiagnosticableTreeMixin
    implements SetCurrencyValue {
  const _$SetCurrencyValueImpl({required this.value});

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorEvent.setCurrencyValue(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalculatorEvent.setCurrencyValue'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCurrencyValueImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCurrencyValueImplCopyWith<_$SetCurrencyValueImpl> get copyWith =>
      __$$SetCurrencyValueImplCopyWithImpl<_$SetCurrencyValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(CurrencyType currencyType) setCurrentCurrency,
    required TResult Function(CurrencyType currencyType) setCalculatedCurrency,
    required TResult Function(String value) setCurrencyValue,
    required TResult Function(String value) setCalculatedCurrencyValue,
  }) {
    return setCurrencyValue(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult? Function(CurrencyType currencyType)? setCalculatedCurrency,
    TResult? Function(String value)? setCurrencyValue,
    TResult? Function(String value)? setCalculatedCurrencyValue,
  }) {
    return setCurrencyValue?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult Function(CurrencyType currencyType)? setCalculatedCurrency,
    TResult Function(String value)? setCurrencyValue,
    TResult Function(String value)? setCalculatedCurrencyValue,
    required TResult orElse(),
  }) {
    if (setCurrencyValue != null) {
      return setCurrencyValue(value);
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
    required TResult Function(SetCurrencyValue value) setCurrencyValue,
    required TResult Function(SetCalculatedCurrencyValue value)
        setCalculatedCurrencyValue,
  }) {
    return setCurrencyValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult? Function(SetCalculatedCurrency value)? setCalculatedCurrency,
    TResult? Function(SetCurrencyValue value)? setCurrencyValue,
    TResult? Function(SetCalculatedCurrencyValue value)?
        setCalculatedCurrencyValue,
  }) {
    return setCurrencyValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult Function(SetCalculatedCurrency value)? setCalculatedCurrency,
    TResult Function(SetCurrencyValue value)? setCurrencyValue,
    TResult Function(SetCalculatedCurrencyValue value)?
        setCalculatedCurrencyValue,
    required TResult orElse(),
  }) {
    if (setCurrencyValue != null) {
      return setCurrencyValue(this);
    }
    return orElse();
  }
}

abstract class SetCurrencyValue implements CalculatorEvent {
  const factory SetCurrencyValue({required final String value}) =
      _$SetCurrencyValueImpl;

  String get value;

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetCurrencyValueImplCopyWith<_$SetCurrencyValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCalculatedCurrencyValueImplCopyWith<$Res> {
  factory _$$SetCalculatedCurrencyValueImplCopyWith(
          _$SetCalculatedCurrencyValueImpl value,
          $Res Function(_$SetCalculatedCurrencyValueImpl) then) =
      __$$SetCalculatedCurrencyValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SetCalculatedCurrencyValueImplCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res,
        _$SetCalculatedCurrencyValueImpl>
    implements _$$SetCalculatedCurrencyValueImplCopyWith<$Res> {
  __$$SetCalculatedCurrencyValueImplCopyWithImpl(
      _$SetCalculatedCurrencyValueImpl _value,
      $Res Function(_$SetCalculatedCurrencyValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SetCalculatedCurrencyValueImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetCalculatedCurrencyValueImpl
    with DiagnosticableTreeMixin
    implements SetCalculatedCurrencyValue {
  const _$SetCalculatedCurrencyValueImpl({required this.value});

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorEvent.setCalculatedCurrencyValue(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CalculatorEvent.setCalculatedCurrencyValue'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCalculatedCurrencyValueImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCalculatedCurrencyValueImplCopyWith<_$SetCalculatedCurrencyValueImpl>
      get copyWith => __$$SetCalculatedCurrencyValueImplCopyWithImpl<
          _$SetCalculatedCurrencyValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() refresh,
    required TResult Function(CurrencyType currencyType) setCurrentCurrency,
    required TResult Function(CurrencyType currencyType) setCalculatedCurrency,
    required TResult Function(String value) setCurrencyValue,
    required TResult Function(String value) setCalculatedCurrencyValue,
  }) {
    return setCalculatedCurrencyValue(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? refresh,
    TResult? Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult? Function(CurrencyType currencyType)? setCalculatedCurrency,
    TResult? Function(String value)? setCurrencyValue,
    TResult? Function(String value)? setCalculatedCurrencyValue,
  }) {
    return setCalculatedCurrencyValue?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? refresh,
    TResult Function(CurrencyType currencyType)? setCurrentCurrency,
    TResult Function(CurrencyType currencyType)? setCalculatedCurrency,
    TResult Function(String value)? setCurrencyValue,
    TResult Function(String value)? setCalculatedCurrencyValue,
    required TResult orElse(),
  }) {
    if (setCalculatedCurrencyValue != null) {
      return setCalculatedCurrencyValue(value);
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
    required TResult Function(SetCurrencyValue value) setCurrencyValue,
    required TResult Function(SetCalculatedCurrencyValue value)
        setCalculatedCurrencyValue,
  }) {
    return setCalculatedCurrencyValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult? Function(SetCalculatedCurrency value)? setCalculatedCurrency,
    TResult? Function(SetCurrencyValue value)? setCurrencyValue,
    TResult? Function(SetCalculatedCurrencyValue value)?
        setCalculatedCurrencyValue,
  }) {
    return setCalculatedCurrencyValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(Refresh value)? refresh,
    TResult Function(SetCurrentCurrency value)? setCurrentCurrency,
    TResult Function(SetCalculatedCurrency value)? setCalculatedCurrency,
    TResult Function(SetCurrencyValue value)? setCurrencyValue,
    TResult Function(SetCalculatedCurrencyValue value)?
        setCalculatedCurrencyValue,
    required TResult orElse(),
  }) {
    if (setCalculatedCurrencyValue != null) {
      return setCalculatedCurrencyValue(this);
    }
    return orElse();
  }
}

abstract class SetCalculatedCurrencyValue implements CalculatorEvent {
  const factory SetCalculatedCurrencyValue({required final String value}) =
      _$SetCalculatedCurrencyValueImpl;

  String get value;

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetCalculatedCurrencyValueImplCopyWith<_$SetCalculatedCurrencyValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalculatorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            FindLatestResponse findLatestResponse,
            double rate,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            String calculatedValue)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            FindLatestResponse findLatestResponse,
            double rate,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            String calculatedValue)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            FindLatestResponse findLatestResponse,
            double rate,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            String calculatedValue)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculatorInitial value) initial,
    required TResult Function(CalculatorLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculatorInitial value)? initial,
    TResult? Function(CalculatorLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculatorInitial value)? initial,
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
abstract class _$$CalculatorInitialImplCopyWith<$Res> {
  factory _$$CalculatorInitialImplCopyWith(_$CalculatorInitialImpl value,
          $Res Function(_$CalculatorInitialImpl) then) =
      __$$CalculatorInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculatorInitialImplCopyWithImpl<$Res>
    extends _$CalculatorStateCopyWithImpl<$Res, _$CalculatorInitialImpl>
    implements _$$CalculatorInitialImplCopyWith<$Res> {
  __$$CalculatorInitialImplCopyWithImpl(_$CalculatorInitialImpl _value,
      $Res Function(_$CalculatorInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CalculatorInitialImpl
    with DiagnosticableTreeMixin
    implements CalculatorInitial {
  const _$CalculatorInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CalculatorState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CalculatorInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            FindLatestResponse findLatestResponse,
            double rate,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            String calculatedValue)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            FindLatestResponse findLatestResponse,
            double rate,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            String calculatedValue)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            FindLatestResponse findLatestResponse,
            double rate,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            String calculatedValue)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculatorInitial value) initial,
    required TResult Function(CalculatorLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculatorInitial value)? initial,
    TResult? Function(CalculatorLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculatorInitial value)? initial,
    TResult Function(CalculatorLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CalculatorInitial implements CalculatorState {
  const factory CalculatorInitial() = _$CalculatorInitialImpl;
}

/// @nodoc
abstract class _$$CalculatorLoadedImplCopyWith<$Res> {
  factory _$$CalculatorLoadedImplCopyWith(_$CalculatorLoadedImpl value,
          $Res Function(_$CalculatorLoadedImpl) then) =
      __$$CalculatorLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {FindLatestResponse findLatestResponse,
      double rate,
      CurrencyType currencyType,
      CurrencyType calculatedType,
      String currencyValue,
      String calculatedValue});
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
    Object? rate = null,
    Object? currencyType = null,
    Object? calculatedType = null,
    Object? currencyValue = null,
    Object? calculatedValue = null,
  }) {
    return _then(_$CalculatorLoadedImpl(
      findLatestResponse: null == findLatestResponse
          ? _value.findLatestResponse
          : findLatestResponse // ignore: cast_nullable_to_non_nullable
              as FindLatestResponse,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
      calculatedType: null == calculatedType
          ? _value.calculatedType
          : calculatedType // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
      currencyValue: null == currencyValue
          ? _value.currencyValue
          : currencyValue // ignore: cast_nullable_to_non_nullable
              as String,
      calculatedValue: null == calculatedValue
          ? _value.calculatedValue
          : calculatedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CalculatorLoadedImpl
    with DiagnosticableTreeMixin
    implements CalculatorLoaded {
  const _$CalculatorLoadedImpl(
      {required this.findLatestResponse,
      required this.rate,
      this.currencyType = CurrencyType.USD,
      this.calculatedType = CurrencyType.EUR,
      this.currencyValue = '0',
      this.calculatedValue = '0'});

  @override
  final FindLatestResponse findLatestResponse;
  @override
  final double rate;
  @override
  @JsonKey()
  final CurrencyType currencyType;
  @override
  @JsonKey()
  final CurrencyType calculatedType;
  @override
  @JsonKey()
  final String currencyValue;
  @override
  @JsonKey()
  final String calculatedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorState.loaded(findLatestResponse: $findLatestResponse, rate: $rate, currencyType: $currencyType, calculatedType: $calculatedType, currencyValue: $currencyValue, calculatedValue: $calculatedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalculatorState.loaded'))
      ..add(DiagnosticsProperty('findLatestResponse', findLatestResponse))
      ..add(DiagnosticsProperty('rate', rate))
      ..add(DiagnosticsProperty('currencyType', currencyType))
      ..add(DiagnosticsProperty('calculatedType', calculatedType))
      ..add(DiagnosticsProperty('currencyValue', currencyValue))
      ..add(DiagnosticsProperty('calculatedValue', calculatedValue));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorLoadedImpl &&
            (identical(other.findLatestResponse, findLatestResponse) ||
                other.findLatestResponse == findLatestResponse) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.calculatedType, calculatedType) ||
                other.calculatedType == calculatedType) &&
            (identical(other.currencyValue, currencyValue) ||
                other.currencyValue == currencyValue) &&
            (identical(other.calculatedValue, calculatedValue) ||
                other.calculatedValue == calculatedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, findLatestResponse, rate,
      currencyType, calculatedType, currencyValue, calculatedValue);

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
    required TResult Function() initial,
    required TResult Function(
            FindLatestResponse findLatestResponse,
            double rate,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            String calculatedValue)
        loaded,
  }) {
    return loaded(findLatestResponse, rate, currencyType, calculatedType,
        currencyValue, calculatedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            FindLatestResponse findLatestResponse,
            double rate,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            String calculatedValue)?
        loaded,
  }) {
    return loaded?.call(findLatestResponse, rate, currencyType, calculatedType,
        currencyValue, calculatedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            FindLatestResponse findLatestResponse,
            double rate,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            String calculatedValue)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(findLatestResponse, rate, currencyType, calculatedType,
          currencyValue, calculatedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculatorInitial value) initial,
    required TResult Function(CalculatorLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculatorInitial value)? initial,
    TResult? Function(CalculatorLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculatorInitial value)? initial,
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
      required final double rate,
      final CurrencyType currencyType,
      final CurrencyType calculatedType,
      final String currencyValue,
      final String calculatedValue}) = _$CalculatorLoadedImpl;

  FindLatestResponse get findLatestResponse;
  double get rate;
  CurrencyType get currencyType;
  CurrencyType get calculatedType;
  String get currencyValue;
  String get calculatedValue;

  /// Create a copy of CalculatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorLoadedImplCopyWith<_$CalculatorLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
