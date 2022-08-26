import 'package:flutter/material.dart';

import '../../constants.dart';
import 'menu.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 16.0,
      child: Container(
        padding: const EdgeInsets.all(Constraints.padding8),
        height: 100,
        color: Theme.of(context).backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Menu(),
            const Spacer(flex: 2),
            Text(
              'ACADEMIC SYSTEM',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: Colors.black),
            ),
            const SizedBox(width: Constraints.padding16),
            const Icon(Icons.account_balance, size: 64.0),
          ],
        ),
      ),
    );
  }
}
