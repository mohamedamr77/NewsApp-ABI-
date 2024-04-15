import 'package:dio/dio.dart';
import 'package:news/widget/articalmodel.dart';
class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  getBusinessNews()async {

    Response response =await dio.get("https://newsapi.org/v2/top-headlines?apiKey=08433c8dda43458fa30826408cb8219e&country=eg&category=business");

    Map<String,dynamic>  jsonData=response.data;

    List<dynamic> articles=jsonData["articles"];

    List<ArticleModel> articlesList=[];

    for (dynamic article in articles){

       ArticleModel articleModel=ArticleModel(
         image: article["urlToImage"],
         title: article["title"],
         description: article["description"],
       );
       articlesList.add(articleModel);
    }
    print(articlesList);
  }


}