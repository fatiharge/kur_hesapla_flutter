//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'find_latest_meta.g.dart';

/// FindLatestMeta
///
/// Properties:
/// * [baseCurrency] 
/// * [createdDate] 
@BuiltValue()
abstract class FindLatestMeta implements Built<FindLatestMeta, FindLatestMetaBuilder> {
  @BuiltValueField(wireName: r'baseCurrency')
  String? get baseCurrency;

  @BuiltValueField(wireName: r'createdDate')
  DateTime? get createdDate;

  FindLatestMeta._();

  factory FindLatestMeta([void updates(FindLatestMetaBuilder b)]) = _$FindLatestMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FindLatestMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FindLatestMeta> get serializer => _$FindLatestMetaSerializer();
}

class _$FindLatestMetaSerializer implements PrimitiveSerializer<FindLatestMeta> {
  @override
  final Iterable<Type> types = const [FindLatestMeta, _$FindLatestMeta];

  @override
  final String wireName = r'FindLatestMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FindLatestMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.baseCurrency != null) {
      yield r'baseCurrency';
      yield serializers.serialize(
        object.baseCurrency,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdDate != null) {
      yield r'createdDate';
      yield serializers.serialize(
        object.createdDate,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FindLatestMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FindLatestMetaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'baseCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.baseCurrency = valueDes;
          break;
        case r'createdDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FindLatestMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FindLatestMetaBuilder();
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

