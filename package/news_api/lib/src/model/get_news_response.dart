//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:news_api/src/model/get_news_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:news_api/src/model/get_news_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_news_response.g.dart';

/// GetNewsResponse
///
/// Properties:
/// * [meta] 
/// * [data] 
@BuiltValue()
abstract class GetNewsResponse implements Built<GetNewsResponse, GetNewsResponseBuilder> {
  @BuiltValueField(wireName: r'meta')
  GetNewsMeta? get meta;

  @BuiltValueField(wireName: r'data')
  BuiltList<GetNewsData>? get data;

  GetNewsResponse._();

  factory GetNewsResponse([void updates(GetNewsResponseBuilder b)]) = _$GetNewsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetNewsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetNewsResponse> get serializer => _$GetNewsResponseSerializer();
}

class _$GetNewsResponseSerializer implements PrimitiveSerializer<GetNewsResponse> {
  @override
  final Iterable<Type> types = const [GetNewsResponse, _$GetNewsResponse];

  @override
  final String wireName = r'GetNewsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetNewsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(GetNewsMeta),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(GetNewsData)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetNewsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetNewsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetNewsMeta),
          ) as GetNewsMeta;
          result.meta.replace(valueDes);
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetNewsData)]),
          ) as BuiltList<GetNewsData>;
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
  GetNewsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetNewsResponseBuilder();
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

