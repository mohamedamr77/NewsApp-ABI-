import 'package:dio/dio.dart';
class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  getNews() async{
    Response response=await dio.get("https://newsapi.org/v2/top-headlines?apiKey=08433c8dda43458fa30826408cb8219e&country=eg&category=general");
      print(response);
  }
  getBusinessNews()async {
    Response response =await dio.get("https://newsapi.org/v2/top-headlines?apiKey=08433c8dda43458fa30826408cb8219e&country=eg&category=business");
    Map<String,dynamic>  jsonData=response.data;
    print(jsonData);
  }


}