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
abstract class _$$SelectCurrencyStateImplCopyWith<$Res>
    implements $SelectCurrencyStateCopyWith<$Res> {
  factory _$$SelectCurrencyStateImplCopyWith(_$SelectCurrencyStateImpl value,
          $Res Function(_$SelectCurrencyStateImpl) then) =
      __$$SelectCurrencyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CurrencyType> allCurrencyTypes,
      List<CurrencyType> filteredCurrencyTypes,
      String searchQuery});
}

/// @nodoc
class __$$SelectCurrencyStateImplCopyWithImpl<$Res>
    extends _$SelectCurrencyStateCopyWithImpl<$Res, _$SelectCurrencyStateImpl>
    implements _$$SelectCurrencyStateImplCopyWith<$Res> {
  __$$SelectCurrencyStateImplCopyWithImpl(_$SelectCurrencyStateImpl _value,
      $Res Function(_$SelectCurrencyStateImpl) _then)
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
    return _then(_$SelectCurrencyStateImpl(
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

class _$SelectCurrencyStateImpl implements _SelectCurrencyState {
  const _$SelectCurrencyStateImpl(
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
    return 'SelectCurrencyState(allCurrencyTypes: $allCurrencyTypes, filteredCurrencyTypes: $filteredCurrencyTypes, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCurrencyStateImpl &&
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
  _$$SelectCurrencyStateImplCopyWith<_$SelectCurrencyStateImpl> get copyWith =>
      __$$SelectCurrencyStateImplCopyWithImpl<_$SelectCurrencyStateImpl>(
          this, _$identity);
}

abstract class _SelectCurrencyState implements SelectCurrencyState {
  const factory _SelectCurrencyState(
      {required final List<CurrencyType> allCurrencyTypes,
      required final List<CurrencyType> filteredCurrencyTypes,
      required final String searchQuery}) = _$SelectCurrencyStateImpl;

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
  _$$SelectCurrencyStateImplCopyWith<_$SelectCurrencyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
