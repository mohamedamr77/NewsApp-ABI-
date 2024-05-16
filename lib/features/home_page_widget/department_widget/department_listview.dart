import 'package:flutter/material.dart';
import '../../../model/list_department.dart';
import 'debartment_item.dart';

//done mediaquery
class DepartmentListView extends StatelessWidget {
  const DepartmentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.15,
        child: ListView.builder(
          itemBuilder: (context, index) => Department(
            index: index,
          ),
          itemCount: listDepartment.length,
          scrollDirection: Axis.horizontal,
        ),
      ) ,
    );
  }
}
