import 'package:academic_system/domain/model/course.dart';

class Student {
  final int _id;
  final String _name;
  final Course _course;

  const Student({
    required int id,
    required String name,
    required Course course,
  })  : _id = id,
        _name = name,
        _course = course;
}
