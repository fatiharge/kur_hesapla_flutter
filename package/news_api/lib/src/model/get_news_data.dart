//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_news_data.g.dart';

/// GetNewsData
///
/// Properties:
/// * [author] 
/// * [title] 
/// * [description] 
/// * [url] 
/// * [urlToImage] 
/// * [publishedAt] 
/// * [content] 
/// * [sourceId] 
/// * [name] 
@BuiltValue()
abstract class GetNewsData implements Built<GetNewsData, GetNewsDataBuilder> {
  @BuiltValueField(wireName: r'author')
  String? get author;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'urlToImage')
  String? get urlToImage;

  @BuiltValueField(wireName: r'publishedAt')
  String? get publishedAt;

  @BuiltValueField(wireName: r'content')
  String? get content;

  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  GetNewsData._();

  factory GetNewsData([void updates(GetNewsDataBuilder b)]) = _$GetNewsData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetNewsDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetNewsData> get serializer => _$GetNewsDataSerializer();
}

class _$GetNewsDataSerializer implements PrimitiveSerializer<GetNewsData> {
  @override
  final Iterable<Type> types = const [GetNewsData, _$GetNewsData];

  @override
  final String wireName = r'GetNewsData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetNewsData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.author != null) {
      yield r'author';
      yield serializers.serialize(
        object.author,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.urlToImage != null) {
      yield r'urlToImage';
      yield serializers.serialize(
        object.urlToImage,
        specifiedType: const FullType(String),
      );
    }
    if (object.publishedAt != null) {
      yield r'publishedAt';
      yield serializers.serialize(
        object.publishedAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType(String),
      );
    }
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetNewsData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetNewsDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'author':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.author = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'urlToImage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.urlToImage = valueDes;
          break;
        case r'publishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.publishedAt = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetNewsData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetNewsDataBuilder();
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

