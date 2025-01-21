// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_news_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetNewsResponse extends GetNewsResponse {
  @override
  final GetNewsMeta? meta;
  @override
  final BuiltList<GetNewsData>? data;

  factory _$GetNewsResponse([void Function(GetNewsResponseBuilder)? updates]) =>
      (new GetNewsResponseBuilder()..update(updates))._build();

  _$GetNewsResponse._({this.meta, this.data}) : super._();

  @override
  GetNewsResponse rebuild(void Function(GetNewsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNewsResponseBuilder toBuilder() =>
      new GetNewsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNewsResponse && meta == other.meta && data == other.data;
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
    return (newBuiltValueToStringHelper(r'GetNewsResponse')
          ..add('meta', meta)
          ..add('data', data))
        .toString();
  }
}

class GetNewsResponseBuilder
    implements Builder<GetNewsResponse, GetNewsResponseBuilder> {
  _$GetNewsResponse? _$v;

  GetNewsMetaBuilder? _meta;
  GetNewsMetaBuilder get meta => _$this._meta ??= new GetNewsMetaBuilder();
  set meta(GetNewsMetaBuilder? meta) => _$this._meta = meta;

  ListBuilder<GetNewsData>? _data;
  ListBuilder<GetNewsData> get data =>
      _$this._data ??= new ListBuilder<GetNewsData>();
  set data(ListBuilder<GetNewsData>? data) => _$this._data = data;

  GetNewsResponseBuilder() {
    GetNewsResponse._defaults(this);
  }

  GetNewsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meta = $v.meta?.toBuilder();
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetNewsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetNewsResponse;
  }

  @override
  void update(void Function(GetNewsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetNewsResponse build() => _build();

  _$GetNewsResponse _build() {
    _$GetNewsResponse _$result;
    try {
      _$result = _$v ??
          new _$GetNewsResponse._(
            meta: _meta?.build(),
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetNewsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
