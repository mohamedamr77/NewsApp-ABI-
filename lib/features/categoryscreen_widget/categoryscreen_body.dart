import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/core/colorapp.dart';
import '../../model/articalmodel.dart';
import '../../services/news_service.dart';
import '../appbar/appbar_widget.dart';
import 'categoryscreen_item.dart';

//done mediaquery

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
      backgroundColor: ColorApp.whiteColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity,MediaQuery.of(context).size.height*0.08),
        child: CustomAppBar(leading:IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ) ,)
      ),
      body:
          isLoading? Center(child: CircularProgressIndicator(),)
              :
      ListView.separated(
        itemBuilder: (context, index) =>  CategoryScreenItem(articleModelDepartment: articles[index]),
        itemCount: articles.length,
        separatorBuilder: (BuildContext context, int index) => SizedBox(height: MediaQuery.of(context).size.height*0.02),
      ),
    );
  }
}
