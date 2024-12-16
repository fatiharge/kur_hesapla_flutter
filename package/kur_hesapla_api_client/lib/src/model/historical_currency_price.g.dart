// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historical_currency_price.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HistoricalCurrencyPrice extends HistoricalCurrencyPrice {
  @override
  final int? id;
  @override
  final String? baseCurrency;
  @override
  final String? targetCurrency;
  @override
  final double? price;
  @override
  final Date? date;

  factory _$HistoricalCurrencyPrice(
          [void Function(HistoricalCurrencyPriceBuilder)? updates]) =>
      (new HistoricalCurrencyPriceBuilder()..update(updates))._build();

  _$HistoricalCurrencyPrice._(
      {this.id, this.baseCurrency, this.targetCurrency, this.price, this.date})
      : super._();

  @override
  HistoricalCurrencyPrice rebuild(
          void Function(HistoricalCurrencyPriceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoricalCurrencyPriceBuilder toBuilder() =>
      new HistoricalCurrencyPriceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoricalCurrencyPrice &&
        id == other.id &&
        baseCurrency == other.baseCurrency &&
        targetCurrency == other.targetCurrency &&
        price == other.price &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, baseCurrency.hashCode);
    _$hash = $jc(_$hash, targetCurrency.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HistoricalCurrencyPrice')
          ..add('id', id)
          ..add('baseCurrency', baseCurrency)
          ..add('targetCurrency', targetCurrency)
          ..add('price', price)
          ..add('date', date))
        .toString();
  }
}

class HistoricalCurrencyPriceBuilder
    implements
        Builder<HistoricalCurrencyPrice, HistoricalCurrencyPriceBuilder> {
  _$HistoricalCurrencyPrice? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _baseCurrency;
  String? get baseCurrency => _$this._baseCurrency;
  set baseCurrency(String? baseCurrency) => _$this._baseCurrency = baseCurrency;

  String? _targetCurrency;
  String? get targetCurrency => _$this._targetCurrency;
  set targetCurrency(String? targetCurrency) =>
      _$this._targetCurrency = targetCurrency;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  HistoricalCurrencyPriceBuilder() {
    HistoricalCurrencyPrice._defaults(this);
  }

  HistoricalCurrencyPriceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _baseCurrency = $v.baseCurrency;
      _targetCurrency = $v.targetCurrency;
      _price = $v.price;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoricalCurrencyPrice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistoricalCurrencyPrice;
  }

  @override
  void update(void Function(HistoricalCurrencyPriceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoricalCurrencyPrice build() => _build();

  _$HistoricalCurrencyPrice _build() {
    final _$result = _$v ??
        new _$HistoricalCurrencyPrice._(
            id: id,
            baseCurrency: baseCurrency,
            targetCurrency: targetCurrency,
            price: price,
            date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
