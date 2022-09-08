import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../../../domain/model/course.dart';
import '../providers/course_service.dart';

class CourseFormController extends GetxController {
  final formKey = GlobalKey<FormBuilderState>();
  final CourseService service;

  CourseFormController({
    required this.service,
  });

  List<int> get periods => List.generate(11, (index) => index + 2);

  Future<void> create({
    required String name,
    required int periods,
  }) async {
    service.create(Course(
      id: null,
      periods: periods,
      name: name,
    ));
  }
}
