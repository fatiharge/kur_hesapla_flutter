// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historical_prices_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HistoricalPricesMeta extends HistoricalPricesMeta {
  @override
  final Date? startDate;
  @override
  final Date? endDate;
  @override
  final String? baseCurrency;

  factory _$HistoricalPricesMeta(
          [void Function(HistoricalPricesMetaBuilder)? updates]) =>
      (new HistoricalPricesMetaBuilder()..update(updates))._build();

  _$HistoricalPricesMeta._({this.startDate, this.endDate, this.baseCurrency})
      : super._();

  @override
  HistoricalPricesMeta rebuild(
          void Function(HistoricalPricesMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoricalPricesMetaBuilder toBuilder() =>
      new HistoricalPricesMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoricalPricesMeta &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        baseCurrency == other.baseCurrency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, baseCurrency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HistoricalPricesMeta')
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('baseCurrency', baseCurrency))
        .toString();
  }
}

class HistoricalPricesMetaBuilder
    implements Builder<HistoricalPricesMeta, HistoricalPricesMetaBuilder> {
  _$HistoricalPricesMeta? _$v;

  Date? _startDate;
  Date? get startDate => _$this._startDate;
  set startDate(Date? startDate) => _$this._startDate = startDate;

  Date? _endDate;
  Date? get endDate => _$this._endDate;
  set endDate(Date? endDate) => _$this._endDate = endDate;

  String? _baseCurrency;
  String? get baseCurrency => _$this._baseCurrency;
  set baseCurrency(String? baseCurrency) => _$this._baseCurrency = baseCurrency;

  HistoricalPricesMetaBuilder() {
    HistoricalPricesMeta._defaults(this);
  }

  HistoricalPricesMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _baseCurrency = $v.baseCurrency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoricalPricesMeta other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistoricalPricesMeta;
  }

  @override
  void update(void Function(HistoricalPricesMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoricalPricesMeta build() => _build();

  _$HistoricalPricesMeta _build() {
    final _$result = _$v ??
        new _$HistoricalPricesMeta._(
          startDate: startDate,
          endDate: endDate,
          baseCurrency: baseCurrency,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
