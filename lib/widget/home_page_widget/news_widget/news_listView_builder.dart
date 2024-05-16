import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../../model/articalmodel.dart';
import '../../../services/news_service.dart';
import 'circular_progress/CircularProgressIndicator_item.dart';
import 'listview_news.dart';

class NewsListViewBuilder extends StatelessWidget {

  const NewsListViewBuilder({super.key,});

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      builder: (context,snapshot){
          if(snapshot.hasData){
            return NewsListView(articles: snapshot.data!);
          }
          else if(snapshot.hasError){
            return SliverToBoxAdapter(child: Text("error please wait"));
          }
          else{
            return SliverFillRemaining(child: CircularProgressIndicator(

            ));
          }

    },
      future:NewsService(dio: Dio()).GetNews() ,
    );

  }
}