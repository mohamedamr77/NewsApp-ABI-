import 'dart:convert';

import 'package:news/model/soureModel.dart';

class ArticleModel {
   final String? image;
   final String? title;
  final String? url;
   final String? description;
   final SourceModel? source;

  ArticleModel({
    required this.image,
    required this.title,
    required this.description,
     this.source,
    required this.url,
  });
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
       url:  json["url"],
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
