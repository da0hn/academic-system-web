import 'package:flutter/material.dart';

import '../../components/shared/base_layout.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseLayout(
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}
