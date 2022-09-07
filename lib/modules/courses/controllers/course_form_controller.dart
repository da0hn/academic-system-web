import 'package:academic_system/domain/model/course.dart';
import 'package:academic_system/modules/courses/providers/course_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseFormController extends GetxController {
  final CourseService service;

  final formKey = GlobalKey<FormState>();
  final name$ = TextEditingController();
  var period$ = 0;

  CourseFormController({
    required this.service,
  });

  get quantityOfPeriods => List.generate(
        11,
        (index) => DropdownMenuItem(
          value: index + 2,
          child: Text('${index + 2} Semestres'),
        ),
      );

  @override
  void onClose() {
    name$.dispose();
    super.onClose();
  }

  void changePeriod(int? period) {
    this.period$ = period ?? 0;
  }

  void create() {
    var name = this.name$.text;
    var period = this.period$;
    service.create(Course(periods: period, name: name, id: null));
  }
}
