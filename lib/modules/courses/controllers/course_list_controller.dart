import 'package:get/get.dart';

import '../../../domain/model/course.dart';
import '../providers/course_service.dart';

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

  @override
  void onReady() async {
    await _fetchCourses();
    super.onReady();
  }

  Future<void> _fetchCourses() async {
    var courses = await service.fetchCourses();
    _courses$.assignAll(courses);
  }

  addRandomCourse() async {
    final course = Course(periods: 10, name: 'Teste 1', id: 999);
    service.create(course);
    _fetchCourses();
  }

  void delete(int id) async {
    service.delete(id);
    _fetchCourses();
  }
}
