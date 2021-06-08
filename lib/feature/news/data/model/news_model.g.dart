// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsModel _$_$_NewsModelFromJson(Map<String, dynamic> json) {
  return _$_NewsModel(
    author: json['author'] as String,
    newsTitle: json['title'] as String,
    newsDescription: json['description'] as String,
    newsUrl: json['url'] as String,
    imageUrl: json['urlToImage'] as String,
  );
}

Map<String, dynamic> _$_$_NewsModelToJson(_$_NewsModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.newsTitle,
      'description': instance.newsDescription,
      'url': instance.newsUrl,
      'urlToImage': instance.imageUrl,
    };
