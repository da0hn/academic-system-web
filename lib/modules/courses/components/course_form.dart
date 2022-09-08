import 'package:academic_system/components/shared/index.dart';
import 'package:academic_system/constants.dart';
import 'package:academic_system/modules/courses/controllers/course_form_controller.dart';
import 'package:academic_system/modules/courses/course_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

class CourseForm extends GetView<CourseFormController> {
  final formKey = GlobalKey<FormBuilderState>();

  CourseForm({
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
        child: FormBuilder(
          key: this.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(Constraints.padding16),
                child: FormBuilderTextField(
                  name: 'course_name',
                  cursorColor: Colors.black,
                  maxLength: 50,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'O nome do curso é obrigatório',
                    ),
                  ]),
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Constraints.padding16),
                child: Row(
                  children: [
                    SizedBox(
                      width: 200,
                      child: FormBuilderDropdown<int>(
                        name: 'course_period',
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                            errorText: 'O semestre do curso é obrigatório',
                          ),
                        ]),
                        borderRadius: BorderRadius.circular(
                          Constraints.padding16,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'Quantidade de Semestres',
                        ),
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
                          this.formKey.currentState?.saveAndValidate();
                          var values = this.formKey.currentState?.value;
                          this.controller.create(
                                name: values!['course_name'],
                                periods: values['course_period'],
                              );
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
