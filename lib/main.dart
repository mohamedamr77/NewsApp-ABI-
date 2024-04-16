import 'package:flutter/material.dart';
import 'package:news/services/news_service.dart';
import 'package:news/ui/homepage.dart';
import 'package:dio/dio.dart';
void main() {

  final dio = Dio();
  NewsService(dio: dio).getNews();
                                           //you can not write line 7,  8 and write NewsService(Dio()).getBusinessNews();
    // Run the app
    runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }

}