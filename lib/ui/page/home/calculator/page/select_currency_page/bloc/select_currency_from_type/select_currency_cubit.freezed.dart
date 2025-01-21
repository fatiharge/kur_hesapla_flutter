// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_currency_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectCurrencyState {
  List<CurrencyType> get allCurrencyTypes => throw _privateConstructorUsedError;
  List<CurrencyType> get filteredCurrencyTypes =>
      throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CurrencyType> allCurrencyTypes,
            List<CurrencyType> filteredCurrencyTypes, String searchQuery)
        all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CurrencyType> allCurrencyTypes,
            List<CurrencyType> filteredCurrencyTypes, String searchQuery)?
        all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CurrencyType> allCurrencyTypes,
            List<CurrencyType> filteredCurrencyTypes, String searchQuery)?
        all,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_All value) all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_All value)? all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_All value)? all,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SelectCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectCurrencyStateCopyWith<SelectCurrencyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectCurrencyStateCopyWith<$Res> {
  factory $SelectCurrencyStateCopyWith(
          SelectCurrencyState value, $Res Function(SelectCurrencyState) then) =
      _$SelectCurrencyStateCopyWithImpl<$Res, SelectCurrencyState>;
  @useResult
  $Res call(
      {List<CurrencyType> allCurrencyTypes,
      List<CurrencyType> filteredCurrencyTypes,
      String searchQuery});
}

/// @nodoc
class _$SelectCurrencyStateCopyWithImpl<$Res, $Val extends SelectCurrencyState>
    implements $SelectCurrencyStateCopyWith<$Res> {
  _$SelectCurrencyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCurrencyTypes = null,
    Object? filteredCurrencyTypes = null,
    Object? searchQuery = null,
  }) {
    return _then(_value.copyWith(
      allCurrencyTypes: null == allCurrencyTypes
          ? _value.allCurrencyTypes
          : allCurrencyTypes // ignore: cast_nullable_to_non_nullable
              as List<CurrencyType>,
      filteredCurrencyTypes: null == filteredCurrencyTypes
          ? _value.filteredCurrencyTypes
          : filteredCurrencyTypes // ignore: cast_nullable_to_non_nullable
              as List<CurrencyType>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllImplCopyWith<$Res>
    implements $SelectCurrencyStateCopyWith<$Res> {
  factory _$$AllImplCopyWith(_$AllImpl value, $Res Function(_$AllImpl) then) =
      __$$AllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CurrencyType> allCurrencyTypes,
      List<CurrencyType> filteredCurrencyTypes,
      String searchQuery});
}

/// @nodoc
class __$$AllImplCopyWithImpl<$Res>
    extends _$SelectCurrencyStateCopyWithImpl<$Res, _$AllImpl>
    implements _$$AllImplCopyWith<$Res> {
  __$$AllImplCopyWithImpl(_$AllImpl _value, $Res Function(_$AllImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCurrencyTypes = null,
    Object? filteredCurrencyTypes = null,
    Object? searchQuery = null,
  }) {
    return _then(_$AllImpl(
      allCurrencyTypes: null == allCurrencyTypes
          ? _value._allCurrencyTypes
          : allCurrencyTypes // ignore: cast_nullable_to_non_nullable
              as List<CurrencyType>,
      filteredCurrencyTypes: null == filteredCurrencyTypes
          ? _value._filteredCurrencyTypes
          : filteredCurrencyTypes // ignore: cast_nullable_to_non_nullable
              as List<CurrencyType>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AllImpl implements _All {
  const _$AllImpl(
      {required final List<CurrencyType> allCurrencyTypes,
      required final List<CurrencyType> filteredCurrencyTypes,
      required this.searchQuery})
      : _allCurrencyTypes = allCurrencyTypes,
        _filteredCurrencyTypes = filteredCurrencyTypes;

  final List<CurrencyType> _allCurrencyTypes;
  @override
  List<CurrencyType> get allCurrencyTypes {
    if (_allCurrencyTypes is EqualUnmodifiableListView)
      return _allCurrencyTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCurrencyTypes);
  }

  final List<CurrencyType> _filteredCurrencyTypes;
  @override
  List<CurrencyType> get filteredCurrencyTypes {
    if (_filteredCurrencyTypes is EqualUnmodifiableListView)
      return _filteredCurrencyTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredCurrencyTypes);
  }

  @override
  final String searchQuery;

  @override
  String toString() {
    return 'SelectCurrencyState.all(allCurrencyTypes: $allCurrencyTypes, filteredCurrencyTypes: $filteredCurrencyTypes, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllImpl &&
            const DeepCollectionEquality()
                .equals(other._allCurrencyTypes, _allCurrencyTypes) &&
            const DeepCollectionEquality()
                .equals(other._filteredCurrencyTypes, _filteredCurrencyTypes) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allCurrencyTypes),
      const DeepCollectionEquality().hash(_filteredCurrencyTypes),
      searchQuery);

  /// Create a copy of SelectCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllImplCopyWith<_$AllImpl> get copyWith =>
      __$$AllImplCopyWithImpl<_$AllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CurrencyType> allCurrencyTypes,
            List<CurrencyType> filteredCurrencyTypes, String searchQuery)
        all,
  }) {
    return all(allCurrencyTypes, filteredCurrencyTypes, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CurrencyType> allCurrencyTypes,
            List<CurrencyType> filteredCurrencyTypes, String searchQuery)?
        all,
  }) {
    return all?.call(allCurrencyTypes, filteredCurrencyTypes, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CurrencyType> allCurrencyTypes,
            List<CurrencyType> filteredCurrencyTypes, String searchQuery)?
        all,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(allCurrencyTypes, filteredCurrencyTypes, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_All value) all,
  }) {
    return all(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_All value)? all,
  }) {
    return all?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_All value)? all,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(this);
    }
    return orElse();
  }
}

abstract class _All implements SelectCurrencyState {
  const factory _All(
      {required final List<CurrencyType> allCurrencyTypes,
      required final List<CurrencyType> filteredCurrencyTypes,
      required final String searchQuery}) = _$AllImpl;

  @override
  List<CurrencyType> get allCurrencyTypes;
  @override
  List<CurrencyType> get filteredCurrencyTypes;
  @override
  String get searchQuery;

  /// Create a copy of SelectCurrencyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllImplCopyWith<_$AllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
