import 'package:flutter/material.dart';
import 'package:news/model/articalmodel.dart';
import 'news_item.dart';

class NewsListView extends StatelessWidget {
  List<ArticleModel> articles;

  NewsListView({super.key,required this.articles});
   @override
  Widget build(BuildContext context) {
    return  SliverList.separated(
      itemBuilder: (context, index) => News(
        articleModel: articles[index],
      ),
      itemCount: articles.length,
      separatorBuilder: (context, index) => SizedBox(height: 8,),
    );
  }
}
