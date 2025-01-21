// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marked_currency_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarkedCurrencyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(MarkedCurrency markedCurrency) select,
    required TResult Function(int id) diSelect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(MarkedCurrency markedCurrency)? select,
    TResult? Function(int id)? diSelect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(MarkedCurrency markedCurrency)? select,
    TResult Function(int id)? diSelect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Clear value) clear,
    required TResult Function(_Select value) select,
    required TResult Function(_DiSelect value) diSelect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Select value)? select,
    TResult? Function(_DiSelect value)? diSelect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Clear value)? clear,
    TResult Function(_Select value)? select,
    TResult Function(_DiSelect value)? diSelect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkedCurrencyEventCopyWith<$Res> {
  factory $MarkedCurrencyEventCopyWith(
          MarkedCurrencyEvent value, $Res Function(MarkedCurrencyEvent) then) =
      _$MarkedCurrencyEventCopyWithImpl<$Res, MarkedCurrencyEvent>;
}

/// @nodoc
class _$MarkedCurrencyEventCopyWithImpl<$Res, $Val extends MarkedCurrencyEvent>
    implements $MarkedCurrencyEventCopyWith<$Res> {
  _$MarkedCurrencyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarkedCurrencyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$MarkedCurrencyEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarkedCurrencyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'MarkedCurrencyEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(MarkedCurrency markedCurrency) select,
    required TResult Function(int id) diSelect,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(MarkedCurrency markedCurrency)? select,
    TResult? Function(int id)? diSelect,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(MarkedCurrency markedCurrency)? select,
    TResult Function(int id)? diSelect,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Clear value) clear,
    required TResult Function(_Select value) select,
    required TResult Function(_DiSelect value) diSelect,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Select value)? select,
    TResult? Function(_DiSelect value)? diSelect,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Clear value)? clear,
    TResult Function(_Select value)? select,
    TResult Function(_DiSelect value)? diSelect,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements MarkedCurrencyEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$SelectImplCopyWith<$Res> {
  factory _$$SelectImplCopyWith(
          _$SelectImpl value, $Res Function(_$SelectImpl) then) =
      __$$SelectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MarkedCurrency markedCurrency});
}

/// @nodoc
class __$$SelectImplCopyWithImpl<$Res>
    extends _$MarkedCurrencyEventCopyWithImpl<$Res, _$SelectImpl>
    implements _$$SelectImplCopyWith<$Res> {
  __$$SelectImplCopyWithImpl(
      _$SelectImpl _value, $Res Function(_$SelectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarkedCurrencyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markedCurrency = null,
  }) {
    return _then(_$SelectImpl(
      markedCurrency: null == markedCurrency
          ? _value.markedCurrency
          : markedCurrency // ignore: cast_nullable_to_non_nullable
              as MarkedCurrency,
    ));
  }
}

/// @nodoc

class _$SelectImpl implements _Select {
  const _$SelectImpl({required this.markedCurrency});

  @override
  final MarkedCurrency markedCurrency;

  @override
  String toString() {
    return 'MarkedCurrencyEvent.select(markedCurrency: $markedCurrency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImpl &&
            (identical(other.markedCurrency, markedCurrency) ||
                other.markedCurrency == markedCurrency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, markedCurrency);

  /// Create a copy of MarkedCurrencyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      __$$SelectImplCopyWithImpl<_$SelectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(MarkedCurrency markedCurrency) select,
    required TResult Function(int id) diSelect,
  }) {
    return select(markedCurrency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(MarkedCurrency markedCurrency)? select,
    TResult? Function(int id)? diSelect,
  }) {
    return select?.call(markedCurrency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(MarkedCurrency markedCurrency)? select,
    TResult Function(int id)? diSelect,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(markedCurrency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Clear value) clear,
    required TResult Function(_Select value) select,
    required TResult Function(_DiSelect value) diSelect,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Select value)? select,
    TResult? Function(_DiSelect value)? diSelect,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Clear value)? clear,
    TResult Function(_Select value)? select,
    TResult Function(_DiSelect value)? diSelect,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements MarkedCurrencyEvent {
  const factory _Select({required final MarkedCurrency markedCurrency}) =
      _$SelectImpl;

  MarkedCurrency get markedCurrency;

  /// Create a copy of MarkedCurrencyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DiSelectImplCopyWith<$Res> {
  factory _$$DiSelectImplCopyWith(
          _$DiSelectImpl value, $Res Function(_$DiSelectImpl) then) =
      __$$DiSelectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DiSelectImplCopyWithImpl<$Res>
    extends _$MarkedCurrencyEventCopyWithImpl<$Res, _$DiSelectImpl>
    implements _$$DiSelectImplCopyWith<$Res> {
  __$$DiSelectImplCopyWithImpl(
      _$DiSelectImpl _value, $Res Function(_$DiSelectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarkedCurrencyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DiSelectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DiSelectImpl implements _DiSelect {
  const _$DiSelectImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'MarkedCurrencyEvent.diSelect(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiSelectImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MarkedCurrencyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiSelectImplCopyWith<_$DiSelectImpl> get copyWith =>
      __$$DiSelectImplCopyWithImpl<_$DiSelectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clear,
    required TResult Function(MarkedCurrency markedCurrency) select,
    required TResult Function(int id) diSelect,
  }) {
    return diSelect(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clear,
    TResult? Function(MarkedCurrency markedCurrency)? select,
    TResult? Function(int id)? diSelect,
  }) {
    return diSelect?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clear,
    TResult Function(MarkedCurrency markedCurrency)? select,
    TResult Function(int id)? diSelect,
    required TResult orElse(),
  }) {
    if (diSelect != null) {
      return diSelect(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Clear value) clear,
    required TResult Function(_Select value) select,
    required TResult Function(_DiSelect value) diSelect,
  }) {
    return diSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Clear value)? clear,
    TResult? Function(_Select value)? select,
    TResult? Function(_DiSelect value)? diSelect,
  }) {
    return diSelect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Clear value)? clear,
    TResult Function(_Select value)? select,
    TResult Function(_DiSelect value)? diSelect,
    required TResult orElse(),
  }) {
    if (diSelect != null) {
      return diSelect(this);
    }
    return orElse();
  }
}

abstract class _DiSelect implements MarkedCurrencyEvent {
  const factory _DiSelect({required final int id}) = _$DiSelectImpl;

  int get id;

  /// Create a copy of MarkedCurrencyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiSelectImplCopyWith<_$DiSelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MarkedCurrencyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MarkedCurrency marked, int id) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MarkedCurrency marked, int id)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MarkedCurrency marked, int id)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Selected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Selected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Selected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkedCurrencyStateCopyWith<$Res> {
  factory $MarkedCurrencyStateCopyWith(
          MarkedCurrencyState value, $Res Function(MarkedCurrencyState) then) =
      _$MarkedCurrencyStateCopyWithImpl<$Res, MarkedCurrencyState>;
}

/// @nodoc
class _$MarkedCurrencyStateCopyWithImpl<$Res, $Val extends MarkedCurrencyState>
    implements $MarkedCurrencyStateCopyWith<$Res> {
  _$MarkedCurrencyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarkedCurrencyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MarkedCurrencyStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarkedCurrencyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MarkedCurrencyState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MarkedCurrency marked, int id) selected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MarkedCurrency marked, int id)? selected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MarkedCurrency marked, int id)? selected,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Selected value) selected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Selected value)? selected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Selected value)? selected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MarkedCurrencyState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SelectedImplCopyWith<$Res> {
  factory _$$SelectedImplCopyWith(
          _$SelectedImpl value, $Res Function(_$SelectedImpl) then) =
      __$$SelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MarkedCurrency marked, int id});
}

/// @nodoc
class __$$SelectedImplCopyWithImpl<$Res>
    extends _$MarkedCurrencyStateCopyWithImpl<$Res, _$SelectedImpl>
    implements _$$SelectedImplCopyWith<$Res> {
  __$$SelectedImplCopyWithImpl(
      _$SelectedImpl _value, $Res Function(_$SelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarkedCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marked = null,
    Object? id = null,
  }) {
    return _then(_$SelectedImpl(
      marked: null == marked
          ? _value.marked
          : marked // ignore: cast_nullable_to_non_nullable
              as MarkedCurrency,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedImpl implements Selected {
  const _$SelectedImpl({required this.marked, required this.id});

  @override
  final MarkedCurrency marked;
  @override
  final int id;

  @override
  String toString() {
    return 'MarkedCurrencyState.selected(marked: $marked, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedImpl &&
            (identical(other.marked, marked) || other.marked == marked) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, marked, id);

  /// Create a copy of MarkedCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      __$$SelectedImplCopyWithImpl<_$SelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MarkedCurrency marked, int id) selected,
  }) {
    return selected(marked, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MarkedCurrency marked, int id)? selected,
  }) {
    return selected?.call(marked, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MarkedCurrency marked, int id)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(marked, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Selected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Selected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Selected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class Selected implements MarkedCurrencyState {
  const factory Selected(
      {required final MarkedCurrency marked,
      required final int id}) = _$SelectedImpl;

  MarkedCurrency get marked;
  int get id;

  /// Create a copy of MarkedCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
