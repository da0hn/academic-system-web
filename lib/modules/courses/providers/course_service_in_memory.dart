import 'package:academic_system/domain/model/course.dart';
import 'package:academic_system/mock.dart';
import 'package:academic_system/modules/courses/providers/course_service.dart';
import 'package:get/get.dart';

class CourseServiceInMemory implements CourseService {
  final _db = MockData.courses;

  @override
  Future<void> create(Course course) async {
    course.id = _db.length + 1;
    _db.add(course);
    Get.printInfo(info: 'New course added ${_db.length}');
  }

  @override
  Future<void> delete(int id) async {
    _db.removeWhere((element) => element.id == id);
    Get.printInfo(info: 'Course removed ${_db.length}');
  }

  @override
  Future<Course> fetchCourseById(int id) async {
    return _db.firstWhere((element) => element.id == id);
  }

  @override
  Future<List<Course>> fetchCourses() async {
    Get.printInfo(info: 'Getting all courses ${_db.length}');
    return _db;
  }

  @override
  Future<void> update(int id, Course course) async {
    final index = _db.indexWhere((element) => element.id == id);
    _db[index] = course;
    Get.printInfo(info: 'Course updated ${_db[index]}');
  }
}
