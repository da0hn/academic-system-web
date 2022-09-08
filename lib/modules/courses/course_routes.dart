import 'package:get/get.dart';

import 'course_binding.dart';
import 'screens/create_course_screen.dart';
import 'screens/list_course_screen.dart';

class CourseRoutes {
  CourseRoutes._();

  static const root = '/courses';
  static const newCourse = '$root/new';
  static const editCourse = '$root/:id/edit';

  static final routes = [
    GetPage(
      name: root,
      page: () => const ListCourseScreen(),
      binding: CourseBinding(),
    ),
    GetPage(
      name: newCourse,
      page: () => const CreateCourseScreen(),
      binding: CourseBinding(),
    ),
  ];
}
