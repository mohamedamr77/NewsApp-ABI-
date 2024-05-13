import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/services/news_service.dart';
import 'package:news/widget/articalmodel.dart';

import 'list_department.dart';
import 'list_news.dart';
import 'news_column.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {

  List<ArticleModel> articles=[];
  bool isLoading=true;
    @override
  void initState() {
    GetNews();
    super.initState();
  }

  Future<void> GetNews() async{
     articles=await NewsService(dio: Dio()).GetNews();
     isLoading=false ;
     setState(() {
     });
  }

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => News(
        articleModel: articles[index],
      ),
      itemCount: articles.length,
      separatorBuilder: (context, index) => SizedBox(height: 8,),
    )
    ;
  }
}
