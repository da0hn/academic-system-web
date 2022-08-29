import 'package:academic_system/components/shared/base_layout.dart';
import 'package:academic_system/components/shared/table/table.dart';
import 'package:academic_system/constants.dart';
import 'package:academic_system/domain/model/course.dart';
import 'package:academic_system/mock.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseLayout(
        child: Column(
          children: [
            const SizedBox(height: Constraints.padding16),
            HeaderTableList(
              label: 'Cursos',
              onCreate: () {},
            ),
            const SizedBox(height: Constraints.padding16),
            Expanded(
              flex: 8,
              child: TableList<Course>(
                headers: [
                  TableData.header(context, 'ID'),
                  TableData.header(context, 'NOME'),
                  TableData.header(context, 'PERIODOS'),
                ],
                data: MockData.courses,
                mapper: (context, element) {
                  return [
                    TableData.row(context, element.id),
                    TableData.row(context, element.name),
                    TableData.row(context, element.periods)
                  ];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
