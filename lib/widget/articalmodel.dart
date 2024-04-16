import 'package:news/widget/soureModel.dart';

class ArticleModel {
  final String? image;
  final String? title;
  final String? description;
  final SourceModel source;
  ArticleModel(
  {
    required this.image,
    required this.title,
    required this.description,
    required this.source,
  }
      );
}