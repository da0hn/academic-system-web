import 'package:academic_system/modules/courses/controllers/course_list_controller.dart';
import 'package:academic_system/modules/courses/providers/course_service_in_memory.dart';
import 'package:get/get.dart';

class CourseBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CourseListController>(
      () => CourseListController(
        service: CourseServiceInMemory(),
      ),
    );
  }
}
