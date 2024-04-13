import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget{
  String image;
  String textPrimary;
  String textSecondary;

  News({super.key,required this.image,required this.textPrimary,required this.textSecondary});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 8,right: 8),
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(
            image: AssetImage(image),
            fit: BoxFit.fill,
            height: 170,
            width: double.infinity,
          ),
          SizedBox(height: 5,),
          Text(textPrimary,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.5,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 5,),
          Text(textSecondary,
            style:TextStyle(
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