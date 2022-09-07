import 'package:academic_system/components/shared/base_layout.dart';
import 'package:academic_system/components/shared/table/table.dart';
import 'package:academic_system/constants.dart';
import 'package:academic_system/domain/model/course.dart';
import 'package:academic_system/modules/courses/controllers/course_list_controller.dart';
import 'package:academic_system/modules/courses/course_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                  ],
                  mapper: (context, element) {
                    return [
                      TableData.row(context, element.id),
                      TableData.row(context, element.name),
                      TableData.row(context, element.periods)
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
