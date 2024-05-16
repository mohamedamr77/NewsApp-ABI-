import 'package:flutter/material.dart';
import 'package:news/services/news_service.dart';
import 'package:dio/dio.dart';


import 'features/home_page_widget/homepage_body.dart';


void main() {

  // final dio = Dio();
  // NewsService(dio: dio).getNews();
    NewsService(dio: dio).GetSportsNews();                              //you can not write line 7,  8 and write NewsService(Dio()).getBusinessNews();
    // Run the app
    runApp(MyApp());
}
final dio = Dio();


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: CustomHomeScreen(),
       debugShowCheckedModeBanner: false,
    );
  }

}