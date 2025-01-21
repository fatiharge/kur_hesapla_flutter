//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kur_hesapla_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'historical_prices_meta.g.dart';

/// HistoricalPricesMeta
///
/// Properties:
/// * [startDate] 
/// * [endDate] 
/// * [baseCurrency] 
@BuiltValue()
abstract class HistoricalPricesMeta implements Built<HistoricalPricesMeta, HistoricalPricesMetaBuilder> {
  @BuiltValueField(wireName: r'startDate')
  Date? get startDate;

  @BuiltValueField(wireName: r'endDate')
  Date? get endDate;

  @BuiltValueField(wireName: r'baseCurrency')
  String? get baseCurrency;

  HistoricalPricesMeta._();

  factory HistoricalPricesMeta([void updates(HistoricalPricesMetaBuilder b)]) = _$HistoricalPricesMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoricalPricesMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoricalPricesMeta> get serializer => _$HistoricalPricesMetaSerializer();
}

class _$HistoricalPricesMetaSerializer implements PrimitiveSerializer<HistoricalPricesMeta> {
  @override
  final Iterable<Type> types = const [HistoricalPricesMeta, _$HistoricalPricesMeta];

  @override
  final String wireName = r'HistoricalPricesMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoricalPricesMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.startDate != null) {
      yield r'startDate';
      yield serializers.serialize(
        object.startDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.endDate != null) {
      yield r'endDate';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.baseCurrency != null) {
      yield r'baseCurrency';
      yield serializers.serialize(
        object.baseCurrency,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HistoricalPricesMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HistoricalPricesMetaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'startDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.startDate = valueDes;
          break;
        case r'endDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.endDate = valueDes;
          break;
        case r'baseCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.baseCurrency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HistoricalPricesMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoricalPricesMetaBuilder();
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

