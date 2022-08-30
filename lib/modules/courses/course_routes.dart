import 'package:academic_system/modules/courses/course_binding.dart';
import 'package:academic_system/modules/courses/screens/create_course_screen.dart';
import 'package:academic_system/modules/courses/screens/list_course_screen.dart';
import 'package:get/get.dart';

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
