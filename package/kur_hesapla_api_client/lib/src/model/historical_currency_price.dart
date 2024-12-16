//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'historical_currency_price.g.dart';

/// HistoricalCurrencyPrice
///
/// Properties:
/// * [id] 
/// * [baseCurrency] 
/// * [targetCurrency] 
/// * [price] 
/// * [date] 
@BuiltValue()
abstract class HistoricalCurrencyPrice implements Built<HistoricalCurrencyPrice, HistoricalCurrencyPriceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'baseCurrency')
  String? get baseCurrency;

  @BuiltValueField(wireName: r'targetCurrency')
  String? get targetCurrency;

  @BuiltValueField(wireName: r'price')
  double? get price;

  @BuiltValueField(wireName: r'date')
  Date? get date;

  HistoricalCurrencyPrice._();

  factory HistoricalCurrencyPrice([void updates(HistoricalCurrencyPriceBuilder b)]) = _$HistoricalCurrencyPrice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoricalCurrencyPriceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoricalCurrencyPrice> get serializer => _$HistoricalCurrencyPriceSerializer();
}

class _$HistoricalCurrencyPriceSerializer implements PrimitiveSerializer<HistoricalCurrencyPrice> {
  @override
  final Iterable<Type> types = const [HistoricalCurrencyPrice, _$HistoricalCurrencyPrice];

  @override
  final String wireName = r'HistoricalCurrencyPrice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoricalCurrencyPrice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.baseCurrency != null) {
      yield r'baseCurrency';
      yield serializers.serialize(
        object.baseCurrency,
        specifiedType: const FullType(String),
      );
    }
    if (object.targetCurrency != null) {
      yield r'targetCurrency';
      yield serializers.serialize(
        object.targetCurrency,
        specifiedType: const FullType(String),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(double),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HistoricalCurrencyPrice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HistoricalCurrencyPriceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'baseCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.baseCurrency = valueDes;
          break;
        case r'targetCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.targetCurrency = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.price = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HistoricalCurrencyPrice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoricalCurrencyPriceBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

