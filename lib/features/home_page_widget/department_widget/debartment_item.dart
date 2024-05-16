import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/core/colorapp.dart';

import '../../../model/list_department.dart';
import '../../categoryscreen_widget/categoryscreen_body.dart';

class Department extends StatelessWidget{
  int index;
   Department({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryBody(index: index,),));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 115,
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(listDepartment[index].image),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(listDepartment[index].name,
              style: TextStyle(
                color:ColorApp.whiteColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

}