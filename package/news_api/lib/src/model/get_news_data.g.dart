// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_news_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetNewsData extends GetNewsData {
  @override
  final String? author;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? urlToImage;
  @override
  final String? publishedAt;
  @override
  final String? content;
  @override
  final String? sourceId;
  @override
  final String? name;

  factory _$GetNewsData([void Function(GetNewsDataBuilder)? updates]) =>
      (new GetNewsDataBuilder()..update(updates))._build();

  _$GetNewsData._(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content,
      this.sourceId,
      this.name})
      : super._();

  @override
  GetNewsData rebuild(void Function(GetNewsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNewsDataBuilder toBuilder() => new GetNewsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNewsData &&
        author == other.author &&
        title == other.title &&
        description == other.description &&
        url == other.url &&
        urlToImage == other.urlToImage &&
        publishedAt == other.publishedAt &&
        content == other.content &&
        sourceId == other.sourceId &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, urlToImage.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetNewsData')
          ..add('author', author)
          ..add('title', title)
          ..add('description', description)
          ..add('url', url)
          ..add('urlToImage', urlToImage)
          ..add('publishedAt', publishedAt)
          ..add('content', content)
          ..add('sourceId', sourceId)
          ..add('name', name))
        .toString();
  }
}

class GetNewsDataBuilder implements Builder<GetNewsData, GetNewsDataBuilder> {
  _$GetNewsData? _$v;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _urlToImage;
  String? get urlToImage => _$this._urlToImage;
  set urlToImage(String? urlToImage) => _$this._urlToImage = urlToImage;

  String? _publishedAt;
  String? get publishedAt => _$this._publishedAt;
  set publishedAt(String? publishedAt) => _$this._publishedAt = publishedAt;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GetNewsDataBuilder() {
    GetNewsData._defaults(this);
  }

  GetNewsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _author = $v.author;
      _title = $v.title;
      _description = $v.description;
      _url = $v.url;
      _urlToImage = $v.urlToImage;
      _publishedAt = $v.publishedAt;
      _content = $v.content;
      _sourceId = $v.sourceId;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetNewsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetNewsData;
  }

  @override
  void update(void Function(GetNewsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetNewsData build() => _build();

  _$GetNewsData _build() {
    final _$result = _$v ??
        new _$GetNewsData._(
          author: author,
          title: title,
          description: description,
          url: url,
          urlToImage: urlToImage,
          publishedAt: publishedAt,
          content: content,
          sourceId: sourceId,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
