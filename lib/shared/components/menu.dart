import 'package:flutter/material.dart';

import '../../constants.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Constants.padding16),
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PopupMenuButton<String>(
            elevation: 10.0,
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
            itemBuilder: (context) {
              return List.generate(5, (index) {
                return PopupMenuItem(
                  value: '',
                  padding: const EdgeInsets.all(Constants.padding16),
                  child: Text(
                    'button no $index',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.black),
                  ),
                );
              });
            },
          ),
          const VerticalDivider(color: Colors.black, width: 20),
        ],
      ),
    );
  }
}
