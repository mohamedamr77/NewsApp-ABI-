import 'package:flutter/material.dart';
import 'package:news/core/colorapp.dart';
import '../../../model/list_department.dart';
import '../../categoryscreen_widget/categoryscreen_body.dart';

//done mediaquery
// ignore: must_be_immutable
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
        padding:  EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height*0.01,
          horizontal: MediaQuery.of(context).size.width*0.01,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height*0.2,
          width: MediaQuery.of(context).size.width*0.44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.02),
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