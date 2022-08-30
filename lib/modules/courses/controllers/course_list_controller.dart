import 'package:academic_system/domain/model/course.dart';
import 'package:academic_system/modules/courses/providers/course_service.dart';
import 'package:get/get.dart';

class CourseListController extends GetxController {
  final _courses$ = <Course>[].obs;
  final CourseService service;

  CourseListController({
    required this.service,
  });

  RxList<Course> get courses$ => _courses$;

  @override
  void onInit() async {
    await _fetchCourses();
    super.onInit();
  }

  Future<void> _fetchCourses() async {
    var courses = await service.fetchCourses();
    _courses$.assignAll(courses);
  }

  addRandomCourse() async {
    const course = Course(periods: 10, name: 'Teste 1', id: 999);
    service.create(course);
    _fetchCourses();
  }
}
