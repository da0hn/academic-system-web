import 'package:get/get.dart';

import 'controllers/course_form_controller.dart';
import 'controllers/course_list_controller.dart';
import 'providers/course_service.dart';
import 'providers/course_service_in_memory.dart';

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
