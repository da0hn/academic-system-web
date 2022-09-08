import 'course.dart';

class Subject {
  final int _id;
  final String _name;
  final int _period;
  final List<Course> _courses;

  const Subject({
    required int id,
    required String name,
    required int period,
    required List<Course> courses,
  })  : _id = id,
        _name = name,
        _period = period,
        _courses = courses;
}
