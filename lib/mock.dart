import 'package:academic_system/domain/model/course.dart';
import 'package:academic_system/domain/model/student.dart';
import 'package:academic_system/domain/model/subject.dart';

class MockData {
  static List<Course> courses = [
    const Course(id: 1, name: 'Engenharia da Computação', periods: 10),
    const Course(id: 2, name: 'Ciência da Computação', periods: 8),
    const Course(id: 3, name: 'Matemática', periods: 8),
  ];
  static List<Subject> subjects = [
    Subject(id: 1, name: 'Cálculo I', period: 1, courses: [
      courses[0],
      courses[1],
    ]),
    Subject(id: 2, name: 'Fisica I', period: 1, courses: [
      courses[0],
      courses[2],
    ]),
    Subject(id: 3, name: 'Algoritmo I', period: 1, courses: [...courses]),
  ];
  static List<Student> students = [
    Student(id: 1, name: 'Student 1', course: courses[0]),
    Student(id: 2, name: 'Student 2', course: courses[0]),
    Student(id: 3, name: 'Student 3', course: courses[1]),
    Student(id: 4, name: 'Student 4', course: courses[1]),
    Student(id: 5, name: 'Student 5', course: courses[2]),
  ];
}
