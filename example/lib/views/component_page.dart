import 'package:flutter/material.dart';

class ComponentPage extends StatelessWidget {
  const ComponentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset('assets/image/componentBg.png'),
      ],
    );
  }
}
