import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Department extends StatelessWidget{
  String image;
  String text_Department;
   Department({super.key,required this.image,required this.text_Department});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 115,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(text_Department,
            style: TextStyle(
              color:Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

}