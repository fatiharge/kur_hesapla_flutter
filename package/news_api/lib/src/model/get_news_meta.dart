//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_news_meta.g.dart';

/// GetNewsMeta
///
/// Properties:
/// * [entryCount] 
@BuiltValue()
abstract class GetNewsMeta implements Built<GetNewsMeta, GetNewsMetaBuilder> {
  @BuiltValueField(wireName: r'entryCount')
  int? get entryCount;

  GetNewsMeta._();

  factory GetNewsMeta([void updates(GetNewsMetaBuilder b)]) = _$GetNewsMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetNewsMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetNewsMeta> get serializer => _$GetNewsMetaSerializer();
}

class _$GetNewsMetaSerializer implements PrimitiveSerializer<GetNewsMeta> {
  @override
  final Iterable<Type> types = const [GetNewsMeta, _$GetNewsMeta];

  @override
  final String wireName = r'GetNewsMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetNewsMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entryCount != null) {
      yield r'entryCount';
      yield serializers.serialize(
        object.entryCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetNewsMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetNewsMetaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entryCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.entryCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetNewsMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetNewsMetaBuilder();
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

