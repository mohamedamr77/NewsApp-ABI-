import 'package:flutter/material.dart';
import 'package:news/services/news_service.dart';
import 'package:news/ui/homepage.dart';
import 'package:dio/dio.dart';
void main() {

  final dio = Dio();
    NewsService requestNews =NewsService(dio: dio);
    requestNews.getBusinessNews();
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