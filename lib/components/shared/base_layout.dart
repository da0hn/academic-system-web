import 'package:flutter/material.dart';

import 'footer.dart';
import 'header.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Header(),
          Expanded(
            child: child,
          ),
          const Footer(),
        ],
      ),
    );
  }
}
