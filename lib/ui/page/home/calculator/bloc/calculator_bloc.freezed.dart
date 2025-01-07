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
    required TResult Function(CalculatorLoaded calculatorLoadedState)
        putMarkedCurrency,
    required TResult Function(int id) removeMarkedCurrency,
    required TResult Function() clearMarked,
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
    TResult? Function(CalculatorLoaded calculatorLoadedState)?
        putMarkedCurrency,
    TResult? Function(int id)? removeMarkedCurrency,
    TResult? Function()? clearMarked,
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
    TResult Function(CalculatorLoaded calculatorLoadedState)? putMarkedCurrency,
    TResult Function(int id)? removeMarkedCurrency,
    TResult Function()? clearMarked,
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
    required TResult Function(PutMarkedCurrency value) putMarkedCurrency,
    required TResult Function(RemoveMarkedCurrency value) removeMarkedCurrency,
    required TResult Function(ClearMarked value) clearMarked,
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
    TResult? Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult? Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult? Function(ClearMarked value)? clearMarked,
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
    TResult Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult Function(ClearMarked value)? clearMarked,
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
    required TResult Function(CalculatorLoaded calculatorLoadedState)
        putMarkedCurrency,
    required TResult Function(int id) removeMarkedCurrency,
    required TResult Function() clearMarked,
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
    TResult? Function(CalculatorLoaded calculatorLoadedState)?
        putMarkedCurrency,
    TResult? Function(int id)? removeMarkedCurrency,
    TResult? Function()? clearMarked,
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
    TResult Function(CalculatorLoaded calculatorLoadedState)? putMarkedCurrency,
    TResult Function(int id)? removeMarkedCurrency,
    TResult Function()? clearMarked,
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
    required TResult Function(PutMarkedCurrency value) putMarkedCurrency,
    required TResult Function(RemoveMarkedCurrency value) removeMarkedCurrency,
    required TResult Function(ClearMarked value) clearMarked,
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
    TResult? Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult? Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult? Function(ClearMarked value)? clearMarked,
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
    TResult Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult Function(ClearMarked value)? clearMarked,
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
    required TResult Function(CalculatorLoaded calculatorLoadedState)
        putMarkedCurrency,
    required TResult Function(int id) removeMarkedCurrency,
    required TResult Function() clearMarked,
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
    TResult? Function(CalculatorLoaded calculatorLoadedState)?
        putMarkedCurrency,
    TResult? Function(int id)? removeMarkedCurrency,
    TResult? Function()? clearMarked,
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
    TResult Function(CalculatorLoaded calculatorLoadedState)? putMarkedCurrency,
    TResult Function(int id)? removeMarkedCurrency,
    TResult Function()? clearMarked,
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
    required TResult Function(PutMarkedCurrency value) putMarkedCurrency,
    required TResult Function(RemoveMarkedCurrency value) removeMarkedCurrency,
    required TResult Function(ClearMarked value) clearMarked,
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
    TResult? Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult? Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult? Function(ClearMarked value)? clearMarked,
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
    TResult Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult Function(ClearMarked value)? clearMarked,
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
    required TResult Function(CalculatorLoaded calculatorLoadedState)
        putMarkedCurrency,
    required TResult Function(int id) removeMarkedCurrency,
    required TResult Function() clearMarked,
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
    TResult? Function(CalculatorLoaded calculatorLoadedState)?
        putMarkedCurrency,
    TResult? Function(int id)? removeMarkedCurrency,
    TResult? Function()? clearMarked,
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
    TResult Function(CalculatorLoaded calculatorLoadedState)? putMarkedCurrency,
    TResult Function(int id)? removeMarkedCurrency,
    TResult Function()? clearMarked,
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
    required TResult Function(PutMarkedCurrency value) putMarkedCurrency,
    required TResult Function(RemoveMarkedCurrency value) removeMarkedCurrency,
    required TResult Function(ClearMarked value) clearMarked,
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
    TResult? Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult? Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult? Function(ClearMarked value)? clearMarked,
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
    TResult Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult Function(ClearMarked value)? clearMarked,
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
    required TResult Function(CalculatorLoaded calculatorLoadedState)
        putMarkedCurrency,
    required TResult Function(int id) removeMarkedCurrency,
    required TResult Function() clearMarked,
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
    TResult? Function(CalculatorLoaded calculatorLoadedState)?
        putMarkedCurrency,
    TResult? Function(int id)? removeMarkedCurrency,
    TResult? Function()? clearMarked,
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
    TResult Function(CalculatorLoaded calculatorLoadedState)? putMarkedCurrency,
    TResult Function(int id)? removeMarkedCurrency,
    TResult Function()? clearMarked,
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
    required TResult Function(PutMarkedCurrency value) putMarkedCurrency,
    required TResult Function(RemoveMarkedCurrency value) removeMarkedCurrency,
    required TResult Function(ClearMarked value) clearMarked,
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
    TResult? Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult? Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult? Function(ClearMarked value)? clearMarked,
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
    TResult Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult Function(ClearMarked value)? clearMarked,
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
    required TResult Function(CalculatorLoaded calculatorLoadedState)
        putMarkedCurrency,
    required TResult Function(int id) removeMarkedCurrency,
    required TResult Function() clearMarked,
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
    TResult? Function(CalculatorLoaded calculatorLoadedState)?
        putMarkedCurrency,
    TResult? Function(int id)? removeMarkedCurrency,
    TResult? Function()? clearMarked,
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
    TResult Function(CalculatorLoaded calculatorLoadedState)? putMarkedCurrency,
    TResult Function(int id)? removeMarkedCurrency,
    TResult Function()? clearMarked,
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
    required TResult Function(PutMarkedCurrency value) putMarkedCurrency,
    required TResult Function(RemoveMarkedCurrency value) removeMarkedCurrency,
    required TResult Function(ClearMarked value) clearMarked,
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
    TResult? Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult? Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult? Function(ClearMarked value)? clearMarked,
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
    TResult Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult Function(ClearMarked value)? clearMarked,
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
    required TResult Function(CalculatorLoaded calculatorLoadedState)
        putMarkedCurrency,
    required TResult Function(int id) removeMarkedCurrency,
    required TResult Function() clearMarked,
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
    TResult? Function(CalculatorLoaded calculatorLoadedState)?
        putMarkedCurrency,
    TResult? Function(int id)? removeMarkedCurrency,
    TResult? Function()? clearMarked,
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
    TResult Function(CalculatorLoaded calculatorLoadedState)? putMarkedCurrency,
    TResult Function(int id)? removeMarkedCurrency,
    TResult Function()? clearMarked,
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
    required TResult Function(PutMarkedCurrency value) putMarkedCurrency,
    required TResult Function(RemoveMarkedCurrency value) removeMarkedCurrency,
    required TResult Function(ClearMarked value) clearMarked,
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
    TResult? Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult? Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult? Function(ClearMarked value)? clearMarked,
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
    TResult Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult Function(ClearMarked value)? clearMarked,
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
abstract class _$$PutMarkedCurrencyImplCopyWith<$Res> {
  factory _$$PutMarkedCurrencyImplCopyWith(_$PutMarkedCurrencyImpl value,
          $Res Function(_$PutMarkedCurrencyImpl) then) =
      __$$PutMarkedCurrencyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CalculatorLoaded calculatorLoadedState});
}

/// @nodoc
class __$$PutMarkedCurrencyImplCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res, _$PutMarkedCurrencyImpl>
    implements _$$PutMarkedCurrencyImplCopyWith<$Res> {
  __$$PutMarkedCurrencyImplCopyWithImpl(_$PutMarkedCurrencyImpl _value,
      $Res Function(_$PutMarkedCurrencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calculatorLoadedState = freezed,
  }) {
    return _then(_$PutMarkedCurrencyImpl(
      calculatorLoadedState: freezed == calculatorLoadedState
          ? _value.calculatorLoadedState
          : calculatorLoadedState // ignore: cast_nullable_to_non_nullable
              as CalculatorLoaded,
    ));
  }
}

/// @nodoc

class _$PutMarkedCurrencyImpl
    with DiagnosticableTreeMixin
    implements PutMarkedCurrency {
  const _$PutMarkedCurrencyImpl({required this.calculatorLoadedState});

  @override
  final CalculatorLoaded calculatorLoadedState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorEvent.putMarkedCurrency(calculatorLoadedState: $calculatorLoadedState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalculatorEvent.putMarkedCurrency'))
      ..add(
          DiagnosticsProperty('calculatorLoadedState', calculatorLoadedState));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PutMarkedCurrencyImpl &&
            const DeepCollectionEquality()
                .equals(other.calculatorLoadedState, calculatorLoadedState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(calculatorLoadedState));

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PutMarkedCurrencyImplCopyWith<_$PutMarkedCurrencyImpl> get copyWith =>
      __$$PutMarkedCurrencyImplCopyWithImpl<_$PutMarkedCurrencyImpl>(
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
    required TResult Function(CalculatorLoaded calculatorLoadedState)
        putMarkedCurrency,
    required TResult Function(int id) removeMarkedCurrency,
    required TResult Function() clearMarked,
  }) {
    return putMarkedCurrency(calculatorLoadedState);
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
    TResult? Function(CalculatorLoaded calculatorLoadedState)?
        putMarkedCurrency,
    TResult? Function(int id)? removeMarkedCurrency,
    TResult? Function()? clearMarked,
  }) {
    return putMarkedCurrency?.call(calculatorLoadedState);
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
    TResult Function(CalculatorLoaded calculatorLoadedState)? putMarkedCurrency,
    TResult Function(int id)? removeMarkedCurrency,
    TResult Function()? clearMarked,
    required TResult orElse(),
  }) {
    if (putMarkedCurrency != null) {
      return putMarkedCurrency(calculatorLoadedState);
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
    required TResult Function(PutMarkedCurrency value) putMarkedCurrency,
    required TResult Function(RemoveMarkedCurrency value) removeMarkedCurrency,
    required TResult Function(ClearMarked value) clearMarked,
  }) {
    return putMarkedCurrency(this);
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
    TResult? Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult? Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult? Function(ClearMarked value)? clearMarked,
  }) {
    return putMarkedCurrency?.call(this);
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
    TResult Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult Function(ClearMarked value)? clearMarked,
    required TResult orElse(),
  }) {
    if (putMarkedCurrency != null) {
      return putMarkedCurrency(this);
    }
    return orElse();
  }
}

abstract class PutMarkedCurrency implements CalculatorEvent {
  const factory PutMarkedCurrency(
          {required final CalculatorLoaded calculatorLoadedState}) =
      _$PutMarkedCurrencyImpl;

  CalculatorLoaded get calculatorLoadedState;

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PutMarkedCurrencyImplCopyWith<_$PutMarkedCurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveMarkedCurrencyImplCopyWith<$Res> {
  factory _$$RemoveMarkedCurrencyImplCopyWith(_$RemoveMarkedCurrencyImpl value,
          $Res Function(_$RemoveMarkedCurrencyImpl) then) =
      __$$RemoveMarkedCurrencyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RemoveMarkedCurrencyImplCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res, _$RemoveMarkedCurrencyImpl>
    implements _$$RemoveMarkedCurrencyImplCopyWith<$Res> {
  __$$RemoveMarkedCurrencyImplCopyWithImpl(_$RemoveMarkedCurrencyImpl _value,
      $Res Function(_$RemoveMarkedCurrencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveMarkedCurrencyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveMarkedCurrencyImpl
    with DiagnosticableTreeMixin
    implements RemoveMarkedCurrency {
  const _$RemoveMarkedCurrencyImpl({required this.id});

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorEvent.removeMarkedCurrency(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalculatorEvent.removeMarkedCurrency'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveMarkedCurrencyImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveMarkedCurrencyImplCopyWith<_$RemoveMarkedCurrencyImpl>
      get copyWith =>
          __$$RemoveMarkedCurrencyImplCopyWithImpl<_$RemoveMarkedCurrencyImpl>(
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
    required TResult Function(CalculatorLoaded calculatorLoadedState)
        putMarkedCurrency,
    required TResult Function(int id) removeMarkedCurrency,
    required TResult Function() clearMarked,
  }) {
    return removeMarkedCurrency(id);
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
    TResult? Function(CalculatorLoaded calculatorLoadedState)?
        putMarkedCurrency,
    TResult? Function(int id)? removeMarkedCurrency,
    TResult? Function()? clearMarked,
  }) {
    return removeMarkedCurrency?.call(id);
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
    TResult Function(CalculatorLoaded calculatorLoadedState)? putMarkedCurrency,
    TResult Function(int id)? removeMarkedCurrency,
    TResult Function()? clearMarked,
    required TResult orElse(),
  }) {
    if (removeMarkedCurrency != null) {
      return removeMarkedCurrency(id);
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
    required TResult Function(PutMarkedCurrency value) putMarkedCurrency,
    required TResult Function(RemoveMarkedCurrency value) removeMarkedCurrency,
    required TResult Function(ClearMarked value) clearMarked,
  }) {
    return removeMarkedCurrency(this);
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
    TResult? Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult? Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult? Function(ClearMarked value)? clearMarked,
  }) {
    return removeMarkedCurrency?.call(this);
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
    TResult Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult Function(ClearMarked value)? clearMarked,
    required TResult orElse(),
  }) {
    if (removeMarkedCurrency != null) {
      return removeMarkedCurrency(this);
    }
    return orElse();
  }
}

abstract class RemoveMarkedCurrency implements CalculatorEvent {
  const factory RemoveMarkedCurrency({required final int id}) =
      _$RemoveMarkedCurrencyImpl;

  int get id;

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveMarkedCurrencyImplCopyWith<_$RemoveMarkedCurrencyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearMarkedImplCopyWith<$Res> {
  factory _$$ClearMarkedImplCopyWith(
          _$ClearMarkedImpl value, $Res Function(_$ClearMarkedImpl) then) =
      __$$ClearMarkedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearMarkedImplCopyWithImpl<$Res>
    extends _$CalculatorEventCopyWithImpl<$Res, _$ClearMarkedImpl>
    implements _$$ClearMarkedImplCopyWith<$Res> {
  __$$ClearMarkedImplCopyWithImpl(
      _$ClearMarkedImpl _value, $Res Function(_$ClearMarkedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearMarkedImpl with DiagnosticableTreeMixin implements ClearMarked {
  const _$ClearMarkedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorEvent.clearMarked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CalculatorEvent.clearMarked'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearMarkedImpl);
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
    required TResult Function(CalculatorLoaded calculatorLoadedState)
        putMarkedCurrency,
    required TResult Function(int id) removeMarkedCurrency,
    required TResult Function() clearMarked,
  }) {
    return clearMarked();
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
    TResult? Function(CalculatorLoaded calculatorLoadedState)?
        putMarkedCurrency,
    TResult? Function(int id)? removeMarkedCurrency,
    TResult? Function()? clearMarked,
  }) {
    return clearMarked?.call();
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
    TResult Function(CalculatorLoaded calculatorLoadedState)? putMarkedCurrency,
    TResult Function(int id)? removeMarkedCurrency,
    TResult Function()? clearMarked,
    required TResult orElse(),
  }) {
    if (clearMarked != null) {
      return clearMarked();
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
    required TResult Function(PutMarkedCurrency value) putMarkedCurrency,
    required TResult Function(RemoveMarkedCurrency value) removeMarkedCurrency,
    required TResult Function(ClearMarked value) clearMarked,
  }) {
    return clearMarked(this);
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
    TResult? Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult? Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult? Function(ClearMarked value)? clearMarked,
  }) {
    return clearMarked?.call(this);
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
    TResult Function(PutMarkedCurrency value)? putMarkedCurrency,
    TResult Function(RemoveMarkedCurrency value)? removeMarkedCurrency,
    TResult Function(ClearMarked value)? clearMarked,
    required TResult orElse(),
  }) {
    if (clearMarked != null) {
      return clearMarked(this);
    }
    return orElse();
  }
}

abstract class ClearMarked implements CalculatorEvent {
  const factory ClearMarked() = _$ClearMarkedImpl;
}

/// @nodoc
mixin _$CalculatorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            FindLatestResponse findLatestResponse,
            double rate,
            String calculatedValue,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            bool isMarked,
            int? markedId)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            FindLatestResponse findLatestResponse,
            double rate,
            String calculatedValue,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            bool isMarked,
            int? markedId)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            FindLatestResponse findLatestResponse,
            double rate,
            String calculatedValue,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            bool isMarked,
            int? markedId)?
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
            String calculatedValue,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            bool isMarked,
            int? markedId)
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
            String calculatedValue,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            bool isMarked,
            int? markedId)?
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
            String calculatedValue,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            bool isMarked,
            int? markedId)?
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
      String calculatedValue,
      CurrencyType currencyType,
      CurrencyType calculatedType,
      String currencyValue,
      bool isMarked,
      int? markedId});
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
    Object? calculatedValue = null,
    Object? currencyType = null,
    Object? calculatedType = null,
    Object? currencyValue = null,
    Object? isMarked = null,
    Object? markedId = freezed,
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
      calculatedValue: null == calculatedValue
          ? _value.calculatedValue
          : calculatedValue // ignore: cast_nullable_to_non_nullable
              as String,
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
      isMarked: null == isMarked
          ? _value.isMarked
          : isMarked // ignore: cast_nullable_to_non_nullable
              as bool,
      markedId: freezed == markedId
          ? _value.markedId
          : markedId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      required this.calculatedValue,
      this.currencyType = CurrencyType.USD,
      this.calculatedType = CurrencyType.EUR,
      this.currencyValue = '1',
      this.isMarked = false,
      this.markedId});

  @override
  final FindLatestResponse findLatestResponse;
  @override
  final double rate;
  @override
  final String calculatedValue;
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
  final bool isMarked;
  @override
  final int? markedId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalculatorState.loaded(findLatestResponse: $findLatestResponse, rate: $rate, calculatedValue: $calculatedValue, currencyType: $currencyType, calculatedType: $calculatedType, currencyValue: $currencyValue, isMarked: $isMarked, markedId: $markedId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalculatorState.loaded'))
      ..add(DiagnosticsProperty('findLatestResponse', findLatestResponse))
      ..add(DiagnosticsProperty('rate', rate))
      ..add(DiagnosticsProperty('calculatedValue', calculatedValue))
      ..add(DiagnosticsProperty('currencyType', currencyType))
      ..add(DiagnosticsProperty('calculatedType', calculatedType))
      ..add(DiagnosticsProperty('currencyValue', currencyValue))
      ..add(DiagnosticsProperty('isMarked', isMarked))
      ..add(DiagnosticsProperty('markedId', markedId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorLoadedImpl &&
            (identical(other.findLatestResponse, findLatestResponse) ||
                other.findLatestResponse == findLatestResponse) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.calculatedValue, calculatedValue) ||
                other.calculatedValue == calculatedValue) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.calculatedType, calculatedType) ||
                other.calculatedType == calculatedType) &&
            (identical(other.currencyValue, currencyValue) ||
                other.currencyValue == currencyValue) &&
            (identical(other.isMarked, isMarked) ||
                other.isMarked == isMarked) &&
            (identical(other.markedId, markedId) ||
                other.markedId == markedId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      findLatestResponse,
      rate,
      calculatedValue,
      currencyType,
      calculatedType,
      currencyValue,
      isMarked,
      markedId);

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
            String calculatedValue,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            bool isMarked,
            int? markedId)
        loaded,
  }) {
    return loaded(findLatestResponse, rate, calculatedValue, currencyType,
        calculatedType, currencyValue, isMarked, markedId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            FindLatestResponse findLatestResponse,
            double rate,
            String calculatedValue,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            bool isMarked,
            int? markedId)?
        loaded,
  }) {
    return loaded?.call(findLatestResponse, rate, calculatedValue, currencyType,
        calculatedType, currencyValue, isMarked, markedId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            FindLatestResponse findLatestResponse,
            double rate,
            String calculatedValue,
            CurrencyType currencyType,
            CurrencyType calculatedType,
            String currencyValue,
            bool isMarked,
            int? markedId)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(findLatestResponse, rate, calculatedValue, currencyType,
          calculatedType, currencyValue, isMarked, markedId);
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
      required final String calculatedValue,
      final CurrencyType currencyType,
      final CurrencyType calculatedType,
      final String currencyValue,
      final bool isMarked,
      final int? markedId}) = _$CalculatorLoadedImpl;

  FindLatestResponse get findLatestResponse;
  double get rate;
  String get calculatedValue;
  CurrencyType get currencyType;
  CurrencyType get calculatedType;
  String get currencyValue;
  bool get isMarked;
  int? get markedId;

  /// Create a copy of CalculatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorLoadedImplCopyWith<_$CalculatorLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
