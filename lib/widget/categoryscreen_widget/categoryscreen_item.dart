
import 'package:flutter/material.dart';
import 'package:news/model/articalmodel.dart';

import '../../core/colorapp.dart';

class CategoryScreenItem extends StatelessWidget {
  const CategoryScreenItem({super.key,required this.articleModelDepartment});
  final ArticleModel? articleModelDepartment;
  @override
  Widget build(BuildContext context) {
    if (articleModelDepartment == null ||
        articleModelDepartment!.image == null ||
        articleModelDepartment!.title == null ||
        articleModelDepartment!.description == null
    )
    {
      return Container();
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 8, right: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            articleModelDepartment!.image ?? '',
            fit: BoxFit.fill,
            height: 170,
            width: double.infinity,
          ),
          SizedBox(height: 5),
          Text(
            articleModelDepartment!.title ?? '',
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
            articleModelDepartment!.description ?? '',
            style: TextStyle(
              color: ColorApp.greyColor,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
