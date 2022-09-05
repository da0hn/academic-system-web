import 'package:academic_system/components/shared/base_layout.dart';
import 'package:academic_system/constants.dart';
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
                  children: [
                    const SizedBox(height: Constraints.padding24),
                    Expanded(
                      flex: 6,
                      child: Card(
                        elevation: Constraints.elevation,
                        color: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            Constraints.radius,
                          ),
                        ),
                        child: const Center(
                          child: Text('TESTE'),
                        ),
                      ),
                    ),
                    const SizedBox(height: Constraints.padding24),
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

  Material _card(BuildContext context) {
    return Material(
      elevation: 16,
      borderRadius: const BorderRadius.all(
        Radius.circular(25),
      ),
      child: Container(
        constraints: const BoxConstraints.expand(),
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.all(
          Constraints.padding16,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
