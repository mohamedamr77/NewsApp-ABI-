import 'package:flutter/material.dart';
import '../../../model/list_department.dart';
import 'debartment_item.dart';

class DepartmentListView extends StatelessWidget {
  const DepartmentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child: SizedBox(
        height: 120,
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
