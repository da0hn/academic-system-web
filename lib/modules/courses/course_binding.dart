import 'package:academic_system/modules/courses/controllers/course_form_controller.dart';
import 'package:academic_system/modules/courses/controllers/course_list_controller.dart';
import 'package:academic_system/modules/courses/providers/course_service.dart';
import 'package:academic_system/modules/courses/providers/course_service_in_memory.dart';
import 'package:get/get.dart';

class CourseBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CourseService>(
      CourseServiceInMemory(),
      permanent: true,
    );
    Get.lazyPut<CourseListController>(
      () => CourseListController(
        service: Get.find(),
      ),
    );
    Get.lazyPut<CourseFormController>(
      () => CourseFormController(
        service: Get.find(),
      ),
    );
  }
}
