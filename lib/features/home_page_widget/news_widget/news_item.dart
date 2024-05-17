import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/core/colorapp.dart';
import '../../../model/articalmodel.dart';
import '../../news_details/news_details_body.dart';
//done mediaquery
class News extends StatelessWidget {
  final ArticleModel? articleModel;

  News({Key? key, required this.articleModel}) : super(key: key);
  bool containsEnglish(String text) {
    // Check if the text contains any English characters
    return text.codeUnits.any((char) => char >= 65 && char <= 122);
  }
  @override
  Widget build(BuildContext context) {
    if (articleModel == null ||
        articleModel!.image == null ||
        articleModel!.description == null
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
           CachedNetworkImage(imageUrl: articleModel!.image!,
             fit: BoxFit.fill,
             height: MediaQuery.of(context).size.height*0.23,
             width: double.infinity,
             placeholder: (context, url) => Center(child: CircularProgressIndicator()),
             errorWidget: (context, url, error) => Icon(Icons.error),

           ),
            SizedBox(height: MediaQuery.of(context).size.height*0.008),
            Text(
              articleModel!.title??"",
              textDirection: containsEnglish(articleModel!.title ?? '') ? TextDirection.ltr : TextDirection.rtl,
              style: TextStyle(
                // color: ColorApp.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.5,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.005),
            Text(
              articleModel!.description!,
              textDirection: containsEnglish(articleModel!.description ?? '') ? TextDirection.ltr : TextDirection.rtl,
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
