import 'package:flutter/material.dart';
import '../appbar/appbar_widget.dart';
import 'department_widget/department_listview.dart';
import 'news_widget/news_listView_builder.dart';

class CustomHomePage extends StatefulWidget {
  @override
  State<CustomHomePage> createState() => _CustomHomePageState();
}

class _CustomHomePageState extends State<CustomHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar,
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [

              DepartmentListView(),

              SliverToBoxAdapter(
                child: SizedBox(height: 10,),
              ),

              NewsListViewBuilder(),

            ],
          )

      ),
    );
  }
}


