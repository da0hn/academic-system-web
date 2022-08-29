import 'package:academic_system/constants.dart';
import 'package:flutter/material.dart';

class HeaderTableList extends StatelessWidget {
  const HeaderTableList({
    Key? key,
    required this.label,
    required this.onCreate,
  }) : super(key: key);

  final String label;
  final VoidCallback onCreate;

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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: Constraints.padding16),
                Text(
                  this.label,
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: this.onCreate,
                  icon: const Icon(Icons.add_outlined, size: 38),
                  style: Theme.of(context).textButtonTheme.style,
                  label: const Text('ADICIONAR'),
                )
              ],
            ),
          ),
        ),
        const Spacer(flex: 1),
      ],
    );
  }
}
