// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(CurrencyType currencyType) setCurrency,
    required TResult Function(CurrencyType currencyType) setSecondCurrency,
    required TResult Function(Date startDate, Date endDate) setDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(CurrencyType currencyType)? setCurrency,
    TResult? Function(CurrencyType currencyType)? setSecondCurrency,
    TResult? Function(Date startDate, Date endDate)? setDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(CurrencyType currencyType)? setCurrency,
    TResult Function(CurrencyType currencyType)? setSecondCurrency,
    TResult Function(Date startDate, Date endDate)? setDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(SetCurrency value) setCurrency,
    required TResult Function(SetSecondCurrency value) setSecondCurrency,
    required TResult Function(SetDate value) setDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(SetCurrency value)? setCurrency,
    TResult? Function(SetSecondCurrency value)? setSecondCurrency,
    TResult? Function(SetDate value)? setDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(SetCurrency value)? setCurrency,
    TResult Function(SetSecondCurrency value)? setSecondCurrency,
    TResult Function(SetDate value)? setDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartEventCopyWith<$Res> {
  factory $ChartEventCopyWith(
          ChartEvent value, $Res Function(ChartEvent) then) =
      _$ChartEventCopyWithImpl<$Res, ChartEvent>;
}

/// @nodoc
class _$ChartEventCopyWithImpl<$Res, $Val extends ChartEvent>
    implements $ChartEventCopyWith<$Res> {
  _$ChartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChartEvent
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
    extends _$ChartEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadImpl implements Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'ChartEvent.load()';
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
    required TResult Function(CurrencyType currencyType) setCurrency,
    required TResult Function(CurrencyType currencyType) setSecondCurrency,
    required TResult Function(Date startDate, Date endDate) setDate,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(CurrencyType currencyType)? setCurrency,
    TResult? Function(CurrencyType currencyType)? setSecondCurrency,
    TResult? Function(Date startDate, Date endDate)? setDate,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(CurrencyType currencyType)? setCurrency,
    TResult Function(CurrencyType currencyType)? setSecondCurrency,
    TResult Function(Date startDate, Date endDate)? setDate,
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
    required TResult Function(SetCurrency value) setCurrency,
    required TResult Function(SetSecondCurrency value) setSecondCurrency,
    required TResult Function(SetDate value) setDate,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(SetCurrency value)? setCurrency,
    TResult? Function(SetSecondCurrency value)? setSecondCurrency,
    TResult? Function(SetDate value)? setDate,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(SetCurrency value)? setCurrency,
    TResult Function(SetSecondCurrency value)? setSecondCurrency,
    TResult Function(SetDate value)? setDate,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class Load implements ChartEvent {
  const factory Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$SetCurrencyImplCopyWith<$Res> {
  factory _$$SetCurrencyImplCopyWith(
          _$SetCurrencyImpl value, $Res Function(_$SetCurrencyImpl) then) =
      __$$SetCurrencyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrencyType currencyType});
}

/// @nodoc
class __$$SetCurrencyImplCopyWithImpl<$Res>
    extends _$ChartEventCopyWithImpl<$Res, _$SetCurrencyImpl>
    implements _$$SetCurrencyImplCopyWith<$Res> {
  __$$SetCurrencyImplCopyWithImpl(
      _$SetCurrencyImpl _value, $Res Function(_$SetCurrencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyType = null,
  }) {
    return _then(_$SetCurrencyImpl(
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
    ));
  }
}

/// @nodoc

class _$SetCurrencyImpl implements SetCurrency {
  const _$SetCurrencyImpl({required this.currencyType});

  @override
  final CurrencyType currencyType;

  @override
  String toString() {
    return 'ChartEvent.setCurrency(currencyType: $currencyType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCurrencyImpl &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currencyType);

  /// Create a copy of ChartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCurrencyImplCopyWith<_$SetCurrencyImpl> get copyWith =>
      __$$SetCurrencyImplCopyWithImpl<_$SetCurrencyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(CurrencyType currencyType) setCurrency,
    required TResult Function(CurrencyType currencyType) setSecondCurrency,
    required TResult Function(Date startDate, Date endDate) setDate,
  }) {
    return setCurrency(currencyType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(CurrencyType currencyType)? setCurrency,
    TResult? Function(CurrencyType currencyType)? setSecondCurrency,
    TResult? Function(Date startDate, Date endDate)? setDate,
  }) {
    return setCurrency?.call(currencyType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(CurrencyType currencyType)? setCurrency,
    TResult Function(CurrencyType currencyType)? setSecondCurrency,
    TResult Function(Date startDate, Date endDate)? setDate,
    required TResult orElse(),
  }) {
    if (setCurrency != null) {
      return setCurrency(currencyType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(SetCurrency value) setCurrency,
    required TResult Function(SetSecondCurrency value) setSecondCurrency,
    required TResult Function(SetDate value) setDate,
  }) {
    return setCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(SetCurrency value)? setCurrency,
    TResult? Function(SetSecondCurrency value)? setSecondCurrency,
    TResult? Function(SetDate value)? setDate,
  }) {
    return setCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(SetCurrency value)? setCurrency,
    TResult Function(SetSecondCurrency value)? setSecondCurrency,
    TResult Function(SetDate value)? setDate,
    required TResult orElse(),
  }) {
    if (setCurrency != null) {
      return setCurrency(this);
    }
    return orElse();
  }
}

abstract class SetCurrency implements ChartEvent {
  const factory SetCurrency({required final CurrencyType currencyType}) =
      _$SetCurrencyImpl;

  CurrencyType get currencyType;

  /// Create a copy of ChartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetCurrencyImplCopyWith<_$SetCurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSecondCurrencyImplCopyWith<$Res> {
  factory _$$SetSecondCurrencyImplCopyWith(_$SetSecondCurrencyImpl value,
          $Res Function(_$SetSecondCurrencyImpl) then) =
      __$$SetSecondCurrencyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrencyType currencyType});
}

/// @nodoc
class __$$SetSecondCurrencyImplCopyWithImpl<$Res>
    extends _$ChartEventCopyWithImpl<$Res, _$SetSecondCurrencyImpl>
    implements _$$SetSecondCurrencyImplCopyWith<$Res> {
  __$$SetSecondCurrencyImplCopyWithImpl(_$SetSecondCurrencyImpl _value,
      $Res Function(_$SetSecondCurrencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyType = null,
  }) {
    return _then(_$SetSecondCurrencyImpl(
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
    ));
  }
}

/// @nodoc

class _$SetSecondCurrencyImpl implements SetSecondCurrency {
  const _$SetSecondCurrencyImpl({required this.currencyType});

  @override
  final CurrencyType currencyType;

  @override
  String toString() {
    return 'ChartEvent.setSecondCurrency(currencyType: $currencyType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSecondCurrencyImpl &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currencyType);

  /// Create a copy of ChartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSecondCurrencyImplCopyWith<_$SetSecondCurrencyImpl> get copyWith =>
      __$$SetSecondCurrencyImplCopyWithImpl<_$SetSecondCurrencyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(CurrencyType currencyType) setCurrency,
    required TResult Function(CurrencyType currencyType) setSecondCurrency,
    required TResult Function(Date startDate, Date endDate) setDate,
  }) {
    return setSecondCurrency(currencyType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(CurrencyType currencyType)? setCurrency,
    TResult? Function(CurrencyType currencyType)? setSecondCurrency,
    TResult? Function(Date startDate, Date endDate)? setDate,
  }) {
    return setSecondCurrency?.call(currencyType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(CurrencyType currencyType)? setCurrency,
    TResult Function(CurrencyType currencyType)? setSecondCurrency,
    TResult Function(Date startDate, Date endDate)? setDate,
    required TResult orElse(),
  }) {
    if (setSecondCurrency != null) {
      return setSecondCurrency(currencyType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(SetCurrency value) setCurrency,
    required TResult Function(SetSecondCurrency value) setSecondCurrency,
    required TResult Function(SetDate value) setDate,
  }) {
    return setSecondCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(SetCurrency value)? setCurrency,
    TResult? Function(SetSecondCurrency value)? setSecondCurrency,
    TResult? Function(SetDate value)? setDate,
  }) {
    return setSecondCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(SetCurrency value)? setCurrency,
    TResult Function(SetSecondCurrency value)? setSecondCurrency,
    TResult Function(SetDate value)? setDate,
    required TResult orElse(),
  }) {
    if (setSecondCurrency != null) {
      return setSecondCurrency(this);
    }
    return orElse();
  }
}

abstract class SetSecondCurrency implements ChartEvent {
  const factory SetSecondCurrency({required final CurrencyType currencyType}) =
      _$SetSecondCurrencyImpl;

  CurrencyType get currencyType;

  /// Create a copy of ChartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetSecondCurrencyImplCopyWith<_$SetSecondCurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetDateImplCopyWith<$Res> {
  factory _$$SetDateImplCopyWith(
          _$SetDateImpl value, $Res Function(_$SetDateImpl) then) =
      __$$SetDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Date startDate, Date endDate});
}

/// @nodoc
class __$$SetDateImplCopyWithImpl<$Res>
    extends _$ChartEventCopyWithImpl<$Res, _$SetDateImpl>
    implements _$$SetDateImplCopyWith<$Res> {
  __$$SetDateImplCopyWithImpl(
      _$SetDateImpl _value, $Res Function(_$SetDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$SetDateImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Date,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as Date,
    ));
  }
}

/// @nodoc

class _$SetDateImpl implements SetDate {
  const _$SetDateImpl({required this.startDate, required this.endDate});

  @override
  final Date startDate;
  @override
  final Date endDate;

  @override
  String toString() {
    return 'ChartEvent.setDate(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDateImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  /// Create a copy of ChartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDateImplCopyWith<_$SetDateImpl> get copyWith =>
      __$$SetDateImplCopyWithImpl<_$SetDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(CurrencyType currencyType) setCurrency,
    required TResult Function(CurrencyType currencyType) setSecondCurrency,
    required TResult Function(Date startDate, Date endDate) setDate,
  }) {
    return setDate(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(CurrencyType currencyType)? setCurrency,
    TResult? Function(CurrencyType currencyType)? setSecondCurrency,
    TResult? Function(Date startDate, Date endDate)? setDate,
  }) {
    return setDate?.call(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(CurrencyType currencyType)? setCurrency,
    TResult Function(CurrencyType currencyType)? setSecondCurrency,
    TResult Function(Date startDate, Date endDate)? setDate,
    required TResult orElse(),
  }) {
    if (setDate != null) {
      return setDate(startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(SetCurrency value) setCurrency,
    required TResult Function(SetSecondCurrency value) setSecondCurrency,
    required TResult Function(SetDate value) setDate,
  }) {
    return setDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(SetCurrency value)? setCurrency,
    TResult? Function(SetSecondCurrency value)? setSecondCurrency,
    TResult? Function(SetDate value)? setDate,
  }) {
    return setDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(SetCurrency value)? setCurrency,
    TResult Function(SetSecondCurrency value)? setSecondCurrency,
    TResult Function(SetDate value)? setDate,
    required TResult orElse(),
  }) {
    if (setDate != null) {
      return setDate(this);
    }
    return orElse();
  }
}

abstract class SetDate implements ChartEvent {
  const factory SetDate(
      {required final Date startDate,
      required final Date endDate}) = _$SetDateImpl;

  Date get startDate;
  Date get endDate;

  /// Create a copy of ChartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetDateImplCopyWith<_$SetDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            HistoricalPricesResponse historicalPricesResponse,
            Date startDate,
            Date endDate,
            CurrencyType currencyType,
            CurrencyType secondCurrencyType)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            HistoricalPricesResponse historicalPricesResponse,
            Date startDate,
            Date endDate,
            CurrencyType currencyType,
            CurrencyType secondCurrencyType)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            HistoricalPricesResponse historicalPricesResponse,
            Date startDate,
            Date endDate,
            CurrencyType currencyType,
            CurrencyType secondCurrencyType)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartInitial value) initial,
    required TResult Function(ChartLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChartInitial value)? initial,
    TResult? Function(ChartLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartInitial value)? initial,
    TResult Function(ChartLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartStateCopyWith<$Res> {
  factory $ChartStateCopyWith(
          ChartState value, $Res Function(ChartState) then) =
      _$ChartStateCopyWithImpl<$Res, ChartState>;
}

/// @nodoc
class _$ChartStateCopyWithImpl<$Res, $Val extends ChartState>
    implements $ChartStateCopyWith<$Res> {
  _$ChartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChartInitialImplCopyWith<$Res> {
  factory _$$ChartInitialImplCopyWith(
          _$ChartInitialImpl value, $Res Function(_$ChartInitialImpl) then) =
      __$$ChartInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChartInitialImplCopyWithImpl<$Res>
    extends _$ChartStateCopyWithImpl<$Res, _$ChartInitialImpl>
    implements _$$ChartInitialImplCopyWith<$Res> {
  __$$ChartInitialImplCopyWithImpl(
      _$ChartInitialImpl _value, $Res Function(_$ChartInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChartInitialImpl implements ChartInitial {
  const _$ChartInitialImpl();

  @override
  String toString() {
    return 'ChartState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChartInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            HistoricalPricesResponse historicalPricesResponse,
            Date startDate,
            Date endDate,
            CurrencyType currencyType,
            CurrencyType secondCurrencyType)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            HistoricalPricesResponse historicalPricesResponse,
            Date startDate,
            Date endDate,
            CurrencyType currencyType,
            CurrencyType secondCurrencyType)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            HistoricalPricesResponse historicalPricesResponse,
            Date startDate,
            Date endDate,
            CurrencyType currencyType,
            CurrencyType secondCurrencyType)?
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
    required TResult Function(ChartInitial value) initial,
    required TResult Function(ChartLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChartInitial value)? initial,
    TResult? Function(ChartLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartInitial value)? initial,
    TResult Function(ChartLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChartInitial implements ChartState {
  const factory ChartInitial() = _$ChartInitialImpl;
}

/// @nodoc
abstract class _$$ChartLoadedImplCopyWith<$Res> {
  factory _$$ChartLoadedImplCopyWith(
          _$ChartLoadedImpl value, $Res Function(_$ChartLoadedImpl) then) =
      __$$ChartLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {HistoricalPricesResponse historicalPricesResponse,
      Date startDate,
      Date endDate,
      CurrencyType currencyType,
      CurrencyType secondCurrencyType});
}

/// @nodoc
class __$$ChartLoadedImplCopyWithImpl<$Res>
    extends _$ChartStateCopyWithImpl<$Res, _$ChartLoadedImpl>
    implements _$$ChartLoadedImplCopyWith<$Res> {
  __$$ChartLoadedImplCopyWithImpl(
      _$ChartLoadedImpl _value, $Res Function(_$ChartLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? historicalPricesResponse = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? currencyType = null,
    Object? secondCurrencyType = null,
  }) {
    return _then(_$ChartLoadedImpl(
      historicalPricesResponse: null == historicalPricesResponse
          ? _value.historicalPricesResponse
          : historicalPricesResponse // ignore: cast_nullable_to_non_nullable
              as HistoricalPricesResponse,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as Date,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as Date,
      currencyType: null == currencyType
          ? _value.currencyType
          : currencyType // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
      secondCurrencyType: null == secondCurrencyType
          ? _value.secondCurrencyType
          : secondCurrencyType // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
    ));
  }
}

/// @nodoc

class _$ChartLoadedImpl implements ChartLoaded {
  const _$ChartLoadedImpl(
      {required this.historicalPricesResponse,
      required this.startDate,
      required this.endDate,
      this.currencyType = CurrencyType.USD,
      this.secondCurrencyType = CurrencyType.EUR});

  @override
  final HistoricalPricesResponse historicalPricesResponse;
  @override
  final Date startDate;
  @override
  final Date endDate;
  @override
  @JsonKey()
  final CurrencyType currencyType;
  @override
  @JsonKey()
  final CurrencyType secondCurrencyType;

  @override
  String toString() {
    return 'ChartState.loaded(historicalPricesResponse: $historicalPricesResponse, startDate: $startDate, endDate: $endDate, currencyType: $currencyType, secondCurrencyType: $secondCurrencyType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartLoadedImpl &&
            (identical(
                    other.historicalPricesResponse, historicalPricesResponse) ||
                other.historicalPricesResponse == historicalPricesResponse) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.currencyType, currencyType) ||
                other.currencyType == currencyType) &&
            (identical(other.secondCurrencyType, secondCurrencyType) ||
                other.secondCurrencyType == secondCurrencyType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, historicalPricesResponse,
      startDate, endDate, currencyType, secondCurrencyType);

  /// Create a copy of ChartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartLoadedImplCopyWith<_$ChartLoadedImpl> get copyWith =>
      __$$ChartLoadedImplCopyWithImpl<_$ChartLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            HistoricalPricesResponse historicalPricesResponse,
            Date startDate,
            Date endDate,
            CurrencyType currencyType,
            CurrencyType secondCurrencyType)
        loaded,
  }) {
    return loaded(historicalPricesResponse, startDate, endDate, currencyType,
        secondCurrencyType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            HistoricalPricesResponse historicalPricesResponse,
            Date startDate,
            Date endDate,
            CurrencyType currencyType,
            CurrencyType secondCurrencyType)?
        loaded,
  }) {
    return loaded?.call(historicalPricesResponse, startDate, endDate,
        currencyType, secondCurrencyType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            HistoricalPricesResponse historicalPricesResponse,
            Date startDate,
            Date endDate,
            CurrencyType currencyType,
            CurrencyType secondCurrencyType)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(historicalPricesResponse, startDate, endDate, currencyType,
          secondCurrencyType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChartInitial value) initial,
    required TResult Function(ChartLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChartInitial value)? initial,
    TResult? Function(ChartLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChartInitial value)? initial,
    TResult Function(ChartLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ChartLoaded implements ChartState {
  const factory ChartLoaded(
      {required final HistoricalPricesResponse historicalPricesResponse,
      required final Date startDate,
      required final Date endDate,
      final CurrencyType currencyType,
      final CurrencyType secondCurrencyType}) = _$ChartLoadedImpl;

  HistoricalPricesResponse get historicalPricesResponse;
  Date get startDate;
  Date get endDate;
  CurrencyType get currencyType;
  CurrencyType get secondCurrencyType;

  /// Create a copy of ChartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartLoadedImplCopyWith<_$ChartLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
