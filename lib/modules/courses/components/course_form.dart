import 'package:academic_system/components/shared/index.dart';
import 'package:academic_system/constants.dart';
import 'package:academic_system/modules/courses/controllers/course_form_controller.dart';
import 'package:academic_system/modules/courses/course_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseForm extends GetView<CourseFormController> {
  const CourseForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Constraints.elevation,
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Constraints.radius,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Constraints.padding24),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(Constraints.padding16),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.book_outlined,
                      color: Colors.black,
                    ),
                    fillColor: Colors.black38,
                    labelText: 'Nome do Curso',
                    labelStyle: TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38),
                    ),
                  ),
                  controller: controller.name$,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Constraints.padding16),
                child: Row(
                  children: [
                    SizedBox(
                      width: 200,
                      child: DropdownButtonFormField<int>(
                        onChanged: this.controller.changePeriod,
                        borderRadius: BorderRadius.circular(
                          Constraints.padding16,
                        ),
                        hint: const Text('Quantidade de Semestres'),
                        items: this
                            .controller
                            .periods
                            .map(
                              (element) => DropdownMenuItem(
                                value: element,
                                child: Text('$element Semestres'),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    const Spacer(flex: 4),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(Constraints.padding16),
                child: Row(
                  children: [
                    const Spacer(flex: 4),
                    SizedBox(
                      height: 60,
                      width: 200,
                      child: TextButton.icon(
                        onPressed: () async {
                          this.controller.create();
                          await Alerts.success(
                            message: 'Curso criado com sucesso',
                            context: context,
                          );
                          Get.toNamed(CourseRoutes.root);
                        },
                        icon: const Icon(Icons.add_outlined, size: 38),
                        style: Theme.of(context).textButtonTheme.style,
                        label: const Text('ADICIONAR'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
