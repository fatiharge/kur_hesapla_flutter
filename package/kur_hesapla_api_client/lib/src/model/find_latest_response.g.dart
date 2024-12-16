// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_latest_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FindLatestResponse extends FindLatestResponse {
  @override
  final Meta? meta;
  @override
  final Data? data;

  factory _$FindLatestResponse(
          [void Function(FindLatestResponseBuilder)? updates]) =>
      (new FindLatestResponseBuilder()..update(updates))._build();

  _$FindLatestResponse._({this.meta, this.data}) : super._();

  @override
  FindLatestResponse rebuild(
          void Function(FindLatestResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FindLatestResponseBuilder toBuilder() =>
      new FindLatestResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FindLatestResponse &&
        meta == other.meta &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FindLatestResponse')
          ..add('meta', meta)
          ..add('data', data))
        .toString();
  }
}

class FindLatestResponseBuilder
    implements Builder<FindLatestResponse, FindLatestResponseBuilder> {
  _$FindLatestResponse? _$v;

  MetaBuilder? _meta;
  MetaBuilder get meta => _$this._meta ??= new MetaBuilder();
  set meta(MetaBuilder? meta) => _$this._meta = meta;

  DataBuilder? _data;
  DataBuilder get data => _$this._data ??= new DataBuilder();
  set data(DataBuilder? data) => _$this._data = data;

  FindLatestResponseBuilder() {
    FindLatestResponse._defaults(this);
  }

  FindLatestResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meta = $v.meta?.toBuilder();
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FindLatestResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FindLatestResponse;
  }

  @override
  void update(void Function(FindLatestResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FindLatestResponse build() => _build();

  _$FindLatestResponse _build() {
    _$FindLatestResponse _$result;
    try {
      _$result = _$v ??
          new _$FindLatestResponse._(
              meta: _meta?.build(), data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FindLatestResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
