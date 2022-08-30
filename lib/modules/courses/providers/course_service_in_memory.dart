import 'package:academic_system/domain/model/course.dart';
import 'package:academic_system/mock.dart';
import 'package:academic_system/modules/courses/providers/course_service.dart';

class CourseServiceInMemory implements CourseService {
  final _db = MockData.courses;

  @override
  Future<void> create(Course course) async {
    _db.add(course);
  }

  @override
  Future<void> delete(int id) async {
    _db.removeWhere((element) => element.id == id);
  }

  @override
  Future<Course> fetchCourseById(int id) async {
    return _db.firstWhere((element) => element.id == id);
  }

  @override
  Future<List<Course>> fetchCourses() async {
    return _db;
  }

  @override
  Future<void> update(int id, Course course) async {
    final index = _db.indexWhere((element) => element.id == id);
    _db[index] = course;
  }
}
