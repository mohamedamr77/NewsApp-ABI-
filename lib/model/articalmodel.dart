import 'dart:convert';

import 'package:news/model/soureModel.dart';

class ArticleModel {
   final String? image;
   final String? title;
   final String? content;
   final String? description;
   final SourceModel? source;

  ArticleModel({
    required this.image,
    required this.title,
    required this.description,
     this.source,
     this.content,});
         /*
         articlesJson[i]["urlToImage"],
        title:      articlesJson[i]["title"],
        description: articlesJson[i]["description"],
        content: articlesJson[i]["content"],
          */
  factory ArticleModel.fromJson(json){
    return ArticleModel(
      image:      json["urlToImage"],
      title:      json["title"],
      description: json["description"],
      content: json["content"],
      source: SourceModel(
        id: json["source"]["id"],
        name: json["source"]["name"],
      ),
    );
  }

  @override
  String toString() {
    return 'ArticleModel{image: $image, title: $title, description: $description, source: $source}';
  }

}
