import 'package:flutter/material.dart';
import 'package:news/widget/news_column.dart';

import '../widget/debartment_box.dart';
import '../widget/list_department.dart';
import '../widget/list_news.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("News",
              style: TextStyle(
                color:Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Cloud",
              style: TextStyle(
                color:Colors.orange,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 120,
                child: ListView.builder(
                  itemBuilder: (context, index) => Department(
                    image: listDepartment[index]["image"],
                    text_Department: listDepartment[index]["name"],
                  ),
                  itemCount: listDepartment.length,
                  scrollDirection: Axis.horizontal,
                ),
              ) ,
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 10,),
            ),
            SliverList.separated(
              itemBuilder: (context, index) => News(
                image: listNews[index]["image"],
                textPrimary: listNews[index]["textPrimary"],
                textSecondary: listNews[index]["textSecondary"],
              ),
              itemCount: listDepartment.length,
              separatorBuilder: (context, index) => SizedBox(height: 8,),
            ),
          ],
        )

      ),
    );
  }
}

/*
 SizedBox(
                height: 120,
                child: ListView.builder(
                  itemBuilder: (context, index) => Department(
                    image: listDepartment[index]["image"],
                    text_Department: listDepartment[index]["name"],
                  ),
                  itemCount: listDepartment.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 10,),
              ListView.separated(
                itemBuilder: (context, index) => News(
                  image: listNews[index]["image"],
                  textPrimary: listNews[index]["textPrimary"],
                  textSecondary: listNews[index]["textSecondary"],
                ),
                separatorBuilder: (context, index) => SizedBox(height: 8,),
                itemCount: listDepartment.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
 */