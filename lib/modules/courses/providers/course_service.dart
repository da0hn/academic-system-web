import '../../../domain/model/index.dart';

abstract class CourseService {
  Future<List<Course>> fetchCourses();

  Future<Course> fetchCourseById(int id);

  Future<void> create(Course course);

  Future<void> update(int id, Course course);

  Future<void> delete(int id);
}
