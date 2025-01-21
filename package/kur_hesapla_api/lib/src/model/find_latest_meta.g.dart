// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_latest_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FindLatestMeta extends FindLatestMeta {
  @override
  final String? baseCurrency;
  @override
  final DateTime? createdDate;

  factory _$FindLatestMeta([void Function(FindLatestMetaBuilder)? updates]) =>
      (new FindLatestMetaBuilder()..update(updates))._build();

  _$FindLatestMeta._({this.baseCurrency, this.createdDate}) : super._();

  @override
  FindLatestMeta rebuild(void Function(FindLatestMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FindLatestMetaBuilder toBuilder() =>
      new FindLatestMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FindLatestMeta &&
        baseCurrency == other.baseCurrency &&
        createdDate == other.createdDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, baseCurrency.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FindLatestMeta')
          ..add('baseCurrency', baseCurrency)
          ..add('createdDate', createdDate))
        .toString();
  }
}

class FindLatestMetaBuilder
    implements Builder<FindLatestMeta, FindLatestMetaBuilder> {
  _$FindLatestMeta? _$v;

  String? _baseCurrency;
  String? get baseCurrency => _$this._baseCurrency;
  set baseCurrency(String? baseCurrency) => _$this._baseCurrency = baseCurrency;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  FindLatestMetaBuilder() {
    FindLatestMeta._defaults(this);
  }

  FindLatestMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baseCurrency = $v.baseCurrency;
      _createdDate = $v.createdDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FindLatestMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FindLatestMeta;
  }

  @override
  void update(void Function(FindLatestMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FindLatestMeta build() => _build();

  _$FindLatestMeta _build() {
    final _$result = _$v ??
        new _$FindLatestMeta._(
          baseCurrency: baseCurrency,
          createdDate: createdDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
