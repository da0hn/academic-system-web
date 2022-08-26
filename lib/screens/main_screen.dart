import 'package:academic_system/components/shared/base_layout.dart';
import 'package:flutter/material.dart';

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
