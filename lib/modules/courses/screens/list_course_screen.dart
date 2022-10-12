import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/shared/base_layout.dart';
import '../../../components/shared/table/table.dart';
import '../../../constants.dart';
import '../../../domain/model/course.dart';
import '../controllers/course_list_controller.dart';
import '../course_routes.dart';

class ListCourseScreen extends GetView<CourseListController> {
  const ListCourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseLayout(
        child: Column(
          children: [
            const SizedBox(height: Constraints.padding16),
            HeaderTableList(
              label: 'Cursos',
              onCreate: () => Get.offAndToNamed(CourseRoutes.newCourse),
            ),
            const SizedBox(height: Constraints.padding16),
            Expanded(
              flex: 8,
              child: Obx(
                () => TableList<Course>(
                  data: controller.courses$.toList(),
                  headers: [
                    TableData.header(context, 'ID'),
                    TableData.header(context, 'NOME'),
                    TableData.header(context, 'PERIODOS'),
                    TableData.header(context, 'AÇÕES'),
                  ],
                  mapper: (context, element) {
                    return [
                      TableData.row(context, element.id),
                      TableData.row(context, element.name),
                      TableData.row(context, element.periods),
                      TableData.actions(context, () {
                        controller.delete(element.id!);
                      }),
                    ];
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
