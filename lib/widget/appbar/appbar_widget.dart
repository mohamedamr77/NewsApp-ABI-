import 'package:flutter/material.dart';

import '../../core/TextApp.dart';
import '../../core/colorapp.dart';

AppBar customAppbar=AppBar(
  backgroundColor: ColorApp.whiteColor,
  elevation: 0,
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