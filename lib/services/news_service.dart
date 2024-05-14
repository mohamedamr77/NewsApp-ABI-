import 'package:dio/dio.dart';
import 'package:news/model/articalmodel.dart';
import 'package:news/model/soureModel.dart';
class NewsService{

  final Dio dio;

  NewsService({required this.dio});

  Future<List<ArticleModel>> GetNews() async {
    try
    {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=08433c8dda43458fa30826408cb8219e");

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articlesJson = jsonData["articles"];

      List<ArticleModel> articlesList = [];

      for (int i = 0; i < articlesJson.length; i++) {
        ArticleModel article = ArticleModel(
          image: articlesJson[i]["urlToImage"],
          title: articlesJson[i]["title"],
          description: articlesJson[i]["description"],
          source: SourceModel(
            id: articlesJson[i]["source"]["id"],
            name: articlesJson[i]["source"]["name"],
          ),
        );
        articlesList.add(article);
      }

      return articlesList;
    } catch (e) {
      // Handle the error here
      print("Error fetching news: $e");
      return []; // Return an empty list or handle the error accordingly
    }


  }

  Future<List<ArticleModel>> GetBusinessNews() async{
    Response response =await dio.get("https://newsapi.org/v2/top-headlines?category=business&apiKey=08433c8dda43458fa30826408cb8219e&country=us");

    Map<String,dynamic> jsonData = response.data;

    List<dynamic> articlesJson = jsonData["articles"];

    List<ArticleModel> articlesList = [];

    for (int i = 0; i < articlesJson.length; i++) {
      ArticleModel article=ArticleModel(
        image: articlesJson[i]["urlToImage"],
        title: articlesJson[i]["title"],
        description: articlesJson[i]["description"],
        source: SourceModel(
          id: articlesJson[i]["source"]["id"],
          name: articlesJson[i]["source"]["name"],
        ),
      );
      articlesList.add(article);
    }

    return articlesList;

  }

  Future<List<ArticleModel>> GetEntertainmentNews() async{
    Response response =await dio.get("https://newsapi.org/v2/top-headlines?category=entertainment&apiKey=08433c8dda43458fa30826408cb8219e&country=us");

    Map<String,dynamic> jsonData = response.data;

    List<dynamic> articlesJson = jsonData["articles"];

    List<ArticleModel> articlesList = [];

    for (int i = 0; i < articlesJson.length; i++) {
      ArticleModel article=ArticleModel(
        image: articlesJson[i]["urlToImage"],
        title: articlesJson[i]["title"],
        description: articlesJson[i]["description"],
        source: SourceModel(
          id: articlesJson[i]["source"]["id"],
          name: articlesJson[i]["source"]["name"],
        ),
      );
      articlesList.add(article);
    }

    return articlesList;

  }

  Future<List<ArticleModel>> GetGeneralNews() async{
    Response response =await dio.get("https://newsapi.org/v2/top-headlines?category=general&apiKey=08433c8dda43458fa30826408cb8219e&country=us");

    Map<String,dynamic> jsonData = response.data;

    List<dynamic> articlesJson = jsonData["articles"];

    List<ArticleModel> articlesList = [];

    for (int i = 0; i < articlesJson.length; i++) {
      ArticleModel article=ArticleModel(
        image: articlesJson[i]["urlToImage"],
        title: articlesJson[i]["title"],
        description: articlesJson[i]["description"],
        source: SourceModel(
          id: articlesJson[i]["source"]["id"],
          name: articlesJson[i]["source"]["name"],
        ),
      );
      articlesList.add(article);
    }

    return articlesList;

  }

  Future<List<ArticleModel>> GetHealthNews() async{
    Response response =await dio.get("https://newsapi.org/v2/top-headlines?category=health&apiKey=08433c8dda43458fa30826408cb8219e&country=us");

    Map<String,dynamic> jsonData = response.data;

    List<dynamic> articlesJson = jsonData["articles"];

    List<ArticleModel> articlesList = [];

    for (int i = 0; i < articlesJson.length; i++) {
      ArticleModel article=ArticleModel(
        image: articlesJson[i]["urlToImage"],
        title: articlesJson[i]["title"],
        description: articlesJson[i]["description"],
        source: SourceModel(
          id: articlesJson[i]["source"]["id"],
          name: articlesJson[i]["source"]["name"],
        ),
      );
      articlesList.add(article);
    }

    return articlesList;

  }

  Future<List<ArticleModel>> GetScienceNews() async{
    Response response =await dio.get("https://newsapi.org/v2/top-headlines?category=science&apiKey=08433c8dda43458fa30826408cb8219e&country=us");

    Map<String,dynamic> jsonData = response.data;

    List<dynamic> articlesJson = jsonData["articles"];

    List<ArticleModel> articlesList = [];

    for (int i = 0; i < articlesJson.length; i++) {
      ArticleModel article=ArticleModel(
        image: articlesJson[i]["urlToImage"],
        title: articlesJson[i]["title"],
        description: articlesJson[i]["description"],
        source: SourceModel(
          id: articlesJson[i]["source"]["id"],
          name: articlesJson[i]["source"]["name"],
        ),
      );
      articlesList.add(article);
    }

    return articlesList;

  }

  Future<List<ArticleModel>> GetSportsNews() async{
    Response response =await dio.get("https://newsapi.org/v2/top-headlines?category=sports&apiKey=08433c8dda43458fa30826408cb8219e&country=us");

    Map<String,dynamic> jsonData = response.data;

    List<dynamic> articlesJson = jsonData["articles"];

    List<ArticleModel> articlesList = [];

    for (int i = 0; i < articlesJson.length; i++) {
      ArticleModel article=ArticleModel(
        image: articlesJson[i]["urlToImage"],
        title: articlesJson[i]["title"],
        description: articlesJson[i]["description"],
        source: SourceModel(
          id: articlesJson[i]["source"]["id"],
          name: articlesJson[i]["source"]["name"],
        ),
      );
      articlesList.add(article);
    }

    return articlesList;

  }

  Future<List<ArticleModel>> GetTechnologyNews() async{
    Response response =await dio.get("https://newsapi.org/v2/top-headlines?category=technology&apiKey=08433c8dda43458fa30826408cb8219e&country=us");

    Map<String,dynamic> jsonData = response.data;

    List<dynamic> articlesJson = jsonData["articles"];

    List<ArticleModel> articlesList = [];

    for (int i = 0; i < articlesJson.length; i++) {
      ArticleModel article=ArticleModel(
        image: articlesJson[i]["urlToImage"],
        title: articlesJson[i]["title"],
        description: articlesJson[i]["description"],
        source: SourceModel(
          id: articlesJson[i]["source"]["id"],
          name: articlesJson[i]["source"]["name"],
        ),
      );
      articlesList.add(article);
    }

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