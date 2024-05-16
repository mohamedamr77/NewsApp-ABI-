import 'package:flutter/material.dart';

import '../../model/articalmodel.dart';

class CustomNewsDetails extends StatelessWidget {
   CustomNewsDetails({super.key,required this.article});
   final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Image(image: NetworkImage(article.image!),
             height: MediaQuery.of(context).size.height*0.3,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(article.description!,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ],
      )

    );
  }
}
