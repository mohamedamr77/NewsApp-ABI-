import 'package:flutter/material.dart';
import 'package:news/core/colorapp.dart';
import 'package:news/widget/news_details/news_details_body.dart';
import '../../../model/articalmodel.dart';

class News extends StatelessWidget {
  final ArticleModel? articleModel;

  News({Key? key, required this.articleModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (articleModel == null ||
        articleModel!.image == null ||
        articleModel!.title == null ||
        articleModel!.description == null ||
       articleModel!.content==null
    )
    {
      return Container();
    }

    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CustomNewsDetails(article: articleModel!),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 8, right: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              articleModel!.image!,
              fit: BoxFit.fill,
              height: 170,
              width: double.infinity,
            ),
            SizedBox(height: 5),
            Text(
              articleModel!.title!,
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
              articleModel!.description!,
              style: TextStyle(
                color: ColorApp.greyColor,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

}
