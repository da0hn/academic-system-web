import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Constraints.padding16),
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PopupMenuButton<String>(
            elevation: 10.0,
            onSelected: (String value) {
              Get.toNamed(value);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.add_outlined, size: 24, color: Colors.black),
                Text(
                  'CADASTROS',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.black),
                ),
              ],
            ),
            itemBuilder: (context) => [
              _subMenuItem(
                context: context,
                value: '/catalogs',
                label: 'Catalagos',
              ),
              _subMenuItem(
                context: context,
                value: '/members',
                label: 'Membros',
              )
            ],
          ),
          const VerticalDivider(color: Colors.black, width: 20),
        ],
      ),
    );
  }

  PopupMenuItem<String> _subMenuItem({
    required BuildContext context,
    required String value,
    required String label,
  }) {
    return PopupMenuItem(
      value: value,
      padding: const EdgeInsets.all(Constraints.padding16),
      child: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: Colors.black),
      ),
    );
  }
}
