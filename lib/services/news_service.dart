import 'package:dio/dio.dart';
import 'package:news/widget/articalmodel.dart';
import 'package:news/widget/soureModel.dart';
class NewsService{
  final Dio dio;
  NewsService({required this.dio});

  Future< List <ArticleModel>> GetNews() async {

    Response response = await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=08433c8dda43458fa30826408cb8219e");

    Map<String,dynamic> jsonData=response.data;

    List<dynamic> articlesJson = jsonData["articles"];

    List<ArticleModel> articlesList= [];

    for (int i = 0; i < articlesJson.length; i++) {
      ArticleModel article=ArticleModel(
          image: articlesJson[i]["urlToImage"],
          title: articlesJson[i]["title"],
          description: articlesJson[i]["description"],
          source: SourceModel(
              id: articlesJson[i]["source"]["id"],
              name: articlesJson[i]["source"]["id"],
          ),
      );
      articlesList.add(article);
    }
    print(articlesList);
    return articlesList;
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

/*
void GetSportsNews() async {
    Response response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=08433c8dda43458fa30826408cb8219e&category=sports&country=eg');
    print(response.data);
  }

  void GetBusinessNews() async{
    Response response =await dio.get("https://newsapi.org/v2/top-headlines?apiKey=08433c8dda43458fa30826408cb8219e&category=business&country=eg");
    print(response.data);
  }
  void GetScienceNews() async {
    Response response =await dio.get("https://newsapi.org/v2/top-headlines?apiKey=08433c8dda43458fa30826408cb8219e&category=science&country=eg");
  print(response.data);
  }

  void GetEntertainmentNews() async {
    Response response =await dio.get("https://newsapi.org/v2/top-headlines?apiKey=08433c8dda43458fa30826408cb8219e&category=entertainment&country=eg");
    print(response.data);
  }

  void GetHealthNews() async {
    Response response =await dio.get("https://newsapi.org/v2/top-headlines?apiKey=08433c8dda43458fa30826408cb8219e&category=health&country=eg");
    print(response.data);
  }
  void GetTechnologyNews() async {
    Response response =await dio.get("https://newsapi.org/v2/top-headlines?apiKey=08433c8dda43458fa30826408cb8219e&category=technology&country=eg");
    print(response.data);
  }

 */