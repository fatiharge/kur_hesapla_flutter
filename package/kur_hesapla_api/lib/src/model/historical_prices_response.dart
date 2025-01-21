//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:kur_hesapla_api/src/model/historical_prices_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:kur_hesapla_api/src/model/historical_prices_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'historical_prices_response.g.dart';

/// HistoricalPricesResponse
///
/// Properties:
/// * [meta] 
/// * [data] 
/// * [errorDates] 
@BuiltValue()
abstract class HistoricalPricesResponse implements Built<HistoricalPricesResponse, HistoricalPricesResponseBuilder> {
  @BuiltValueField(wireName: r'meta')
  HistoricalPricesMeta? get meta;

  @BuiltValueField(wireName: r'data')
  BuiltList<HistoricalPricesData>? get data;

  @BuiltValueField(wireName: r'errorDates')
  BuiltMap<String, String>? get errorDates;

  HistoricalPricesResponse._();

  factory HistoricalPricesResponse([void updates(HistoricalPricesResponseBuilder b)]) = _$HistoricalPricesResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoricalPricesResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoricalPricesResponse> get serializer => _$HistoricalPricesResponseSerializer();
}

class _$HistoricalPricesResponseSerializer implements PrimitiveSerializer<HistoricalPricesResponse> {
  @override
  final Iterable<Type> types = const [HistoricalPricesResponse, _$HistoricalPricesResponse];

  @override
  final String wireName = r'HistoricalPricesResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoricalPricesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(HistoricalPricesMeta),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(HistoricalPricesData)]),
      );
    }
    if (object.errorDates != null) {
      yield r'errorDates';
      yield serializers.serialize(
        object.errorDates,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HistoricalPricesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HistoricalPricesResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HistoricalPricesMeta),
          ) as HistoricalPricesMeta;
          result.meta.replace(valueDes);
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(HistoricalPricesData)]),
          ) as BuiltList<HistoricalPricesData>;
          result.data.replace(valueDes);
          break;
        case r'errorDates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.errorDates.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HistoricalPricesResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoricalPricesResponseBuilder();
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

