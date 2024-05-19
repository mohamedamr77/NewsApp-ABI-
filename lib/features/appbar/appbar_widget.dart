import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../../core/TextApp.dart';
import '../../core/colorapp.dart';
//done
class CustomAppBar extends StatefulWidget {
   CustomAppBar({super.key,required this.leading});
   Widget? leading;

   @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
     backgroundColor: ColorApp.whiteColor,
      elevation: 0,
      leading:widget.leading ,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(TextApp.newsText,
            style: TextStyle(
              //color:ColorApp.blackColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(TextApp.cloudText,
            style: TextStyle(
              color:ColorApp.orangeColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
      actions: [
        Icon(Icons.lightbulb_outline ,
        color: Colors.yellow,
        ),

      ],

    );
  }
}
