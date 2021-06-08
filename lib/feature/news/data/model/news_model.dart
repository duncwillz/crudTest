import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
abstract class NewsModel with _$NewsModel {
  const factory NewsModel({
    String author,
    @JsonKey(name: 'title') String newsTitle,
    @JsonKey(name: 'description') String newsDescription,
    @JsonKey(name: 'url') String newsUrl,
    @JsonKey(name: 'urlToImage') String imageUrl,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map json) => _$NewsModelFromJson(
      Map.castFrom<dynamic, dynamic, String, dynamic>(json));
}
