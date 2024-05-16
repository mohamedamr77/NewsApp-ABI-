import 'package:flutter/material.dart';

import '../../core/TextApp.dart';
import '../../core/colorapp.dart';

class CustomAppBar extends StatelessWidget {
   CustomAppBar({super.key,required this.leading});
   Widget? leading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorApp.whiteColor,
      elevation: 0,
      leading:leading ,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(TextApp.newsText,
            style: TextStyle(
              color:ColorApp.blackColor,
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
    );
  }
}
