import 'package:news/model/soureModel.dart';

class ArticleModel {
  final String? image;
  final String title;
  final String? content;
  final String? description;
  final SourceModel source;

  ArticleModel({
    required this.image,
    required this.title,
    required this.description,
    required this.source,
    required this.content,
  });

  @override
  String toString() {
    return 'ArticleModel{image: $image, title: $title, description: $description, source: $source}';
  }

}
