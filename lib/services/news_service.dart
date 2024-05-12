import 'package:dio/dio.dart';
import 'package:news/widget/articalmodel.dart';
import 'package:news/widget/soureModel.dart';
class NewsService{
  final Dio dio;
  NewsService({required this.dio});
  void GetGeneralNews() async {
    final response = await dio.get('https://newsapi.org/v2/everything?q=bitcoin&apiKey=08433c8dda43458fa30826408cb8219e');
    print(response.data);
  }

  void GetSportsNews() async {
    final response = await dio.get('https://newsapi.org/v2/everything?q=sport&apiKey=08433c8dda43458fa30826408cb8219e');
    print(response.data);
  }

}




/*
    final Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=08433c8dda43458fa30826408cb8219e');

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData["articles"];

    List<ArticleModel> articlesList = [];

    for (int i = 0; i < articles.length; i++) {
      ArticleModel article = ArticleModel(
        image: articles[i]["image"],
        title: articles[i]["title"],
        description: articles[i]["description"],
          source: SourceModel(
          id: articles[i]["source"]["id"],
          name: articles[i]["source"]["name"],
        )
      );
      articlesList.add(article);
    }
    print(articlesList);
  }
 */
