//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'meta.g.dart';

/// Meta
///
/// Properties:
/// * [baseCurrency] 
/// * [createdDate] 
@BuiltValue()
abstract class Meta implements Built<Meta, MetaBuilder> {
  @BuiltValueField(wireName: r'baseCurrency')
  String? get baseCurrency;

  @BuiltValueField(wireName: r'createdDate')
  Date? get createdDate;

  Meta._();

  factory Meta([void updates(MetaBuilder b)]) = _$Meta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Meta> get serializer => _$MetaSerializer();
}

class _$MetaSerializer implements PrimitiveSerializer<Meta> {
  @override
  final Iterable<Type> types = const [Meta, _$Meta];

  @override
  final String wireName = r'Meta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Meta object, {
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
        specifiedType: const FullType(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Meta object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MetaBuilder result,
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
            specifiedType: const FullType(Date),
          ) as Date;
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
  Meta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetaBuilder();
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

