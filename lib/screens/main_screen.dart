import 'package:flutter/material.dart';

import '../shared/components/header.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Header(),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
