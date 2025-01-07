//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/find_latest_data.dart';
import 'package:openapi/src/model/find_latest_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'find_latest_response.g.dart';

/// FindLatestResponse
///
/// Properties:
/// * [meta] 
/// * [data] 
@BuiltValue()
abstract class FindLatestResponse implements Built<FindLatestResponse, FindLatestResponseBuilder> {
  @BuiltValueField(wireName: r'meta')
  FindLatestMeta? get meta;

  @BuiltValueField(wireName: r'data')
  FindLatestData? get data;

  FindLatestResponse._();

  factory FindLatestResponse([void updates(FindLatestResponseBuilder b)]) = _$FindLatestResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FindLatestResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FindLatestResponse> get serializer => _$FindLatestResponseSerializer();
}

class _$FindLatestResponseSerializer implements PrimitiveSerializer<FindLatestResponse> {
  @override
  final Iterable<Type> types = const [FindLatestResponse, _$FindLatestResponse];

  @override
  final String wireName = r'FindLatestResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FindLatestResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(FindLatestMeta),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(FindLatestData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FindLatestResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FindLatestResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FindLatestMeta),
          ) as FindLatestMeta;
          result.meta.replace(valueDes);
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FindLatestData),
          ) as FindLatestData;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FindLatestResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FindLatestResponseBuilder();
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

