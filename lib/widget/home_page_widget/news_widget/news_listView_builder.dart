import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../../model/articalmodel.dart';
import '../../../services/news_service.dart';
import 'circular_progress/CircularProgressIndicator_item.dart';
import 'listview_news.dart';

class NewsListViewBuilder extends StatefulWidget {

  const NewsListViewBuilder({super.key,});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

  List<ArticleModel> articles=[];

  bool isLoading=true;

  Future<void> GetNews() async{
    articles=await NewsService(dio: Dio()).GetNews();
    isLoading=false ;
    setState(() {
    });
  }

  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      isLoading?
          CustomCircularProgressIndicator():
          NewsListView(articles: articles,);
  }
}