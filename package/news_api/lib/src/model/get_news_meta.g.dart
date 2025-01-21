// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_news_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetNewsMeta extends GetNewsMeta {
  @override
  final int? entryCount;

  factory _$GetNewsMeta([void Function(GetNewsMetaBuilder)? updates]) =>
      (new GetNewsMetaBuilder()..update(updates))._build();

  _$GetNewsMeta._({this.entryCount}) : super._();

  @override
  GetNewsMeta rebuild(void Function(GetNewsMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNewsMetaBuilder toBuilder() => new GetNewsMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNewsMeta && entryCount == other.entryCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entryCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetNewsMeta')
          ..add('entryCount', entryCount))
        .toString();
  }
}

class GetNewsMetaBuilder implements Builder<GetNewsMeta, GetNewsMetaBuilder> {
  _$GetNewsMeta? _$v;

  int? _entryCount;
  int? get entryCount => _$this._entryCount;
  set entryCount(int? entryCount) => _$this._entryCount = entryCount;

  GetNewsMetaBuilder() {
    GetNewsMeta._defaults(this);
  }

  GetNewsMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entryCount = $v.entryCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetNewsMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetNewsMeta;
  }

  @override
  void update(void Function(GetNewsMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetNewsMeta build() => _build();

  _$GetNewsMeta _build() {
    final _$result = _$v ??
        new _$GetNewsMeta._(
          entryCount: entryCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
