// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historical_prices_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HistoricalPricesResponse extends HistoricalPricesResponse {
  @override
  final HistoricalPricesMeta? meta;
  @override
  final BuiltList<HistoricalPricesData>? data;

  factory _$HistoricalPricesResponse(
          [void Function(HistoricalPricesResponseBuilder)? updates]) =>
      (new HistoricalPricesResponseBuilder()..update(updates))._build();

  _$HistoricalPricesResponse._({this.meta, this.data}) : super._();

  @override
  HistoricalPricesResponse rebuild(
          void Function(HistoricalPricesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoricalPricesResponseBuilder toBuilder() =>
      new HistoricalPricesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoricalPricesResponse &&
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
    return (newBuiltValueToStringHelper(r'HistoricalPricesResponse')
          ..add('meta', meta)
          ..add('data', data))
        .toString();
  }
}

class HistoricalPricesResponseBuilder
    implements
        Builder<HistoricalPricesResponse, HistoricalPricesResponseBuilder> {
  _$HistoricalPricesResponse? _$v;

  HistoricalPricesMetaBuilder? _meta;
  HistoricalPricesMetaBuilder get meta =>
      _$this._meta ??= new HistoricalPricesMetaBuilder();
  set meta(HistoricalPricesMetaBuilder? meta) => _$this._meta = meta;

  ListBuilder<HistoricalPricesData>? _data;
  ListBuilder<HistoricalPricesData> get data =>
      _$this._data ??= new ListBuilder<HistoricalPricesData>();
  set data(ListBuilder<HistoricalPricesData>? data) => _$this._data = data;

  HistoricalPricesResponseBuilder() {
    HistoricalPricesResponse._defaults(this);
  }

  HistoricalPricesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meta = $v.meta?.toBuilder();
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoricalPricesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistoricalPricesResponse;
  }

  @override
  void update(void Function(HistoricalPricesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoricalPricesResponse build() => _build();

  _$HistoricalPricesResponse _build() {
    _$HistoricalPricesResponse _$result;
    try {
      _$result = _$v ??
          new _$HistoricalPricesResponse._(
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
            r'HistoricalPricesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
