// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return _NewsModel.fromJson(json);
}

/// @nodoc
class _$NewsModelTearOff {
  const _$NewsModelTearOff();

// ignore: unused_element
  _NewsModel call(
      {String author,
      @JsonKey(name: 'title') String newsTitle,
      @JsonKey(name: 'description') String newsDescription,
      @JsonKey(name: 'url') String newsUrl,
      @JsonKey(name: 'urlToImage') String imageUrl}) {
    return _NewsModel(
      author: author,
      newsTitle: newsTitle,
      newsDescription: newsDescription,
      newsUrl: newsUrl,
      imageUrl: imageUrl,
    );
  }

// ignore: unused_element
  NewsModel fromJson(Map<String, Object> json) {
    return NewsModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NewsModel = _$NewsModelTearOff();

/// @nodoc
mixin _$NewsModel {
  String get author;
  @JsonKey(name: 'title')
  String get newsTitle;
  @JsonKey(name: 'description')
  String get newsDescription;
  @JsonKey(name: 'url')
  String get newsUrl;
  @JsonKey(name: 'urlToImage')
  String get imageUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res>;
  $Res call(
      {String author,
      @JsonKey(name: 'title') String newsTitle,
      @JsonKey(name: 'description') String newsDescription,
      @JsonKey(name: 'url') String newsUrl,
      @JsonKey(name: 'urlToImage') String imageUrl});
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res> implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

  final NewsModel _value;
  // ignore: unused_field
  final $Res Function(NewsModel) _then;

  @override
  $Res call({
    Object author = freezed,
    Object newsTitle = freezed,
    Object newsDescription = freezed,
    Object newsUrl = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed ? _value.author : author as String,
      newsTitle: newsTitle == freezed ? _value.newsTitle : newsTitle as String,
      newsDescription: newsDescription == freezed
          ? _value.newsDescription
          : newsDescription as String,
      newsUrl: newsUrl == freezed ? _value.newsUrl : newsUrl as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$NewsModelCopyWith<$Res> implements $NewsModelCopyWith<$Res> {
  factory _$NewsModelCopyWith(
          _NewsModel value, $Res Function(_NewsModel) then) =
      __$NewsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String author,
      @JsonKey(name: 'title') String newsTitle,
      @JsonKey(name: 'description') String newsDescription,
      @JsonKey(name: 'url') String newsUrl,
      @JsonKey(name: 'urlToImage') String imageUrl});
}

/// @nodoc
class __$NewsModelCopyWithImpl<$Res> extends _$NewsModelCopyWithImpl<$Res>
    implements _$NewsModelCopyWith<$Res> {
  __$NewsModelCopyWithImpl(_NewsModel _value, $Res Function(_NewsModel) _then)
      : super(_value, (v) => _then(v as _NewsModel));

  @override
  _NewsModel get _value => super._value as _NewsModel;

  @override
  $Res call({
    Object author = freezed,
    Object newsTitle = freezed,
    Object newsDescription = freezed,
    Object newsUrl = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_NewsModel(
      author: author == freezed ? _value.author : author as String,
      newsTitle: newsTitle == freezed ? _value.newsTitle : newsTitle as String,
      newsDescription: newsDescription == freezed
          ? _value.newsDescription
          : newsDescription as String,
      newsUrl: newsUrl == freezed ? _value.newsUrl : newsUrl as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NewsModel implements _NewsModel {
  const _$_NewsModel(
      {this.author,
      @JsonKey(name: 'title') this.newsTitle,
      @JsonKey(name: 'description') this.newsDescription,
      @JsonKey(name: 'url') this.newsUrl,
      @JsonKey(name: 'urlToImage') this.imageUrl});

  factory _$_NewsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsModelFromJson(json);

  @override
  final String author;
  @override
  @JsonKey(name: 'title')
  final String newsTitle;
  @override
  @JsonKey(name: 'description')
  final String newsDescription;
  @override
  @JsonKey(name: 'url')
  final String newsUrl;
  @override
  @JsonKey(name: 'urlToImage')
  final String imageUrl;

  @override
  String toString() {
    return 'NewsModel(author: $author, newsTitle: $newsTitle, newsDescription: $newsDescription, newsUrl: $newsUrl, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsModel &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.newsTitle, newsTitle) ||
                const DeepCollectionEquality()
                    .equals(other.newsTitle, newsTitle)) &&
            (identical(other.newsDescription, newsDescription) ||
                const DeepCollectionEquality()
                    .equals(other.newsDescription, newsDescription)) &&
            (identical(other.newsUrl, newsUrl) ||
                const DeepCollectionEquality()
                    .equals(other.newsUrl, newsUrl)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(newsTitle) ^
      const DeepCollectionEquality().hash(newsDescription) ^
      const DeepCollectionEquality().hash(newsUrl) ^
      const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  _$NewsModelCopyWith<_NewsModel> get copyWith =>
      __$NewsModelCopyWithImpl<_NewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsModelToJson(this);
  }
}

abstract class _NewsModel implements NewsModel {
  const factory _NewsModel(
      {String author,
      @JsonKey(name: 'title') String newsTitle,
      @JsonKey(name: 'description') String newsDescription,
      @JsonKey(name: 'url') String newsUrl,
      @JsonKey(name: 'urlToImage') String imageUrl}) = _$_NewsModel;

  factory _NewsModel.fromJson(Map<String, dynamic> json) =
      _$_NewsModel.fromJson;

  @override
  String get author;
  @override
  @JsonKey(name: 'title')
  String get newsTitle;
  @override
  @JsonKey(name: 'description')
  String get newsDescription;
  @override
  @JsonKey(name: 'url')
  String get newsUrl;
  @override
  @JsonKey(name: 'urlToImage')
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$NewsModelCopyWith<_NewsModel> get copyWith;
}
