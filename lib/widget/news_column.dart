import 'package:flutter/material.dart';
import 'articalmodel.dart';

class News extends StatelessWidget {
  final ArticleModel? articleModel;

  News({Key? key, required this.articleModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    if (articleModel == null) {
      // Handle the case where articleModel is null
      return Container(); // Return an empty container or placeholder widget
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 8, right: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Image.network(
            articleModel!.image ??"",
            fit: BoxFit.fill,
            height: 170,
            width: double.infinity,
            // errorBuilder: (context, error, stackTrace) {
            //   return Container(
            //     width: 100,
            //     height: 100,
            //     color: Colors.grey, // Placeholder color or image
            //     child: Center(
            //       child: Text('Image Load Failed'),
            //     ),
            //   );
            // },
          ),


          SizedBox(height: 5),
          Text(
            articleModel!.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.5,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 5),
          Text(
            articleModel!.description ?? '',
            style: TextStyle(
              color: Colors.grey,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
