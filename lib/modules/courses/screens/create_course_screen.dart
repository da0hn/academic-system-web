import 'package:academic_system/components/shared/base_layout.dart';
import 'package:academic_system/constants.dart';
import 'package:academic_system/modules/courses/components/course_form.dart';
import 'package:flutter/material.dart';

class CreateCourseScreen extends StatelessWidget {
  const CreateCourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseLayout(
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(flex: 1),
              Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    SizedBox(height: Constraints.padding24),
                    Expanded(
                      flex: 6,
                      child: CourseForm(),
                    ),
                    SizedBox(height: Constraints.padding24),
                  ],
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
