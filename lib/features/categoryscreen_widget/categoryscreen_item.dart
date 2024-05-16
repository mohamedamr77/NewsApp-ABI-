import 'package:flutter/material.dart';
import 'package:news/model/articalmodel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../news_details/news_details_body.dart';
import '../../core/colorapp.dart';
//done mediaquery
class CategoryScreenItem extends StatelessWidget {
  const CategoryScreenItem({Key? key, required this.articleModelDepartment}) : super(key: key);

  final ArticleModel? articleModelDepartment;

  bool containsEnglish(String text) {
    // Check if the text contains any English characters
    return text.codeUnits.any((char) => char >= 65 && char <= 122);
  }

  @override
  Widget build(BuildContext context) {

    if (
        articleModelDepartment == null ||
        articleModelDepartment!.image == null ||
        articleModelDepartment!.description == null) {
      return Container();
    }

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CustomNewsDetails(article: articleModelDepartment!)),
        );
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*0.013),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: articleModelDepartment!.image ?? '',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height*0.22,
              width: double.infinity,
              placeholder: (context, url) => Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.01),

             Text(
              articleModelDepartment!.title.trim() ?? '',
              style: TextStyle(
                color: ColorApp.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.5,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textDirection: containsEnglish(articleModelDepartment!.title ?? '') ? TextDirection.ltr : TextDirection.rtl,
            ),
            SizedBox(height: 5),
            Text(
              articleModelDepartment!.description?.trim() ?? '',
              style: TextStyle(
                color: ColorApp.greyColor,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textDirection: containsEnglish(articleModelDepartment!.description ?? '') ? TextDirection.ltr : TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}
