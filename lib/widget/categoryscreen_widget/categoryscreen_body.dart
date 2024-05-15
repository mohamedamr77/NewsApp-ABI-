import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/widget/appbar/appbar_widget.dart';
import 'package:news/widget/categoryscreen_widget/categoryscreen_item.dart';

import '../../core/colorapp.dart';
import '../../model/articalmodel.dart';
import '../../services/news_service.dart';

class CategoryBody extends StatefulWidget {
   CategoryBody({super.key,required this.index});
   int index;

  @override
  State<CategoryBody> createState() => _CategoryBodyState();
}
class _CategoryBodyState extends State<CategoryBody> {

  List<ArticleModel> articles = [];

  bool isLoading=true;

  Future<void> GetNews() async{
    if(widget.index==0)
    {
      articles=await NewsService(dio: Dio()).GetBusinessNews();
      isLoading=false ;
      setState(() {
      });
    }
    else if(widget.index==1){
      articles=await NewsService(dio: Dio()).GetEntertainmentNews();
      isLoading=false ;
      setState(() {
      });
    }
    else if(widget.index==2){
      articles=await NewsService(dio: Dio()).GetGeneralNews();
      isLoading=false ;
      setState(() {
      });
    }
    else if(widget.index==3){
      articles=await NewsService(dio: Dio()).GetHealthNews();
      isLoading=false ;
      setState(() {
      });
    }
    else if(widget.index==4){
      articles=await NewsService(dio: Dio()).GetScienceNews();
      isLoading=false ;
      setState(() {
      });
    }
    else if(widget.index==5){
      articles=await NewsService(dio: Dio()).GetSportsNews();
      isLoading=false ;
      setState(() {
      });
    }
    else if(widget.index==6){
      articles=await NewsService(dio: Dio()).GetTechnologyNews();
      isLoading=false ;
      setState(() {
      });

    }
  }

  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar,
      body:
          isLoading? Center(child: CircularProgressIndicator(),)
              :
      ListView.separated(
        itemBuilder: (context, index) => CategoryScreenItem(articleModelDepartment: articles[index]),
        itemCount: articles.length,
        separatorBuilder: (BuildContext context, int index) => SizedBox(height: 10),
      ),


    );
  }
}
