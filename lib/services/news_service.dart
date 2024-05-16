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
          content: articlesJson[i]["content"],
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
        content: articlesJson[i]["content"],
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
        content: articlesJson[i]["content"],
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
        content: articlesJson[i]["content"],
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
        content: articlesJson[i]["content"],
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
        content: articlesJson[i]["content"],
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
    Response response =await dio.get("https://newsdata.io/api/1/news?country=eg&category=sports&apikey=pub_44321b0d1058db6fc2c529f138959bddaeea8");

    Map<String,dynamic> jsonData = response.data;

    List<dynamic> resultsJson = jsonData["results"];

    List<ArticleModel> resultsList = [];

    for (int i = 0; i < resultsJson.length; i++) {
      ArticleModel article= ArticleModel(
          image:  resultsJson[i]["image_url"],
        title: resultsJson[i]["title"],
        description: resultsJson[i]["description"],
      );
       resultsList.add(article);
    }
 print(resultsList);
    return resultsList;
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
        content: articlesJson[i]["content"],
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
