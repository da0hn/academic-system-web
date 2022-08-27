import 'package:academic_system/constants.dart';
import 'package:flutter/material.dart';

class SubTitleScreen extends StatelessWidget {
  const SubTitleScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(flex: 1),
        Expanded(
          flex: 6,
          child: Container(
            margin: const EdgeInsets.all(Constraints.padding16),
            padding: const EdgeInsets.all(Constraints.padding8),
            height: 80,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(20.0),
              ),
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              'Cursos',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const Spacer(flex: 1),
      ],
    );
  }
}
