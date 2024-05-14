import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/widget/appbar/appbar_widget.dart';

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
      ListView.separated(
        itemBuilder: (context, index) => Container(
          width: double.infinity,
          margin: EdgeInsets.only(left: 8, right: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                articles[index].image ?? '',
                fit: BoxFit.fill,
                height: 170,
                width: double.infinity,
              ),
              SizedBox(height: 5),
              Text(
                articles[index].title ?? '',
                style: TextStyle(
                  color: ColorApp.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.5,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 5),
              Text(
                articles[index].description ?? '',
                style: TextStyle(
                  color: ColorApp.greyColor,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        itemCount: articles.length,
        separatorBuilder: (BuildContext context, int index) => SizedBox(height: 10),
      ),


    );
  }
}
