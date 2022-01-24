import 'package:flutter/material.dart';

import '../widget/nav_button.dart';

class BasicsPage extends StatelessWidget {
  const BasicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset('assets/image/basicsBg.png'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Row(
                children: [
                  NavButton(
                    title: '布局', label: 'layout', icon: Icons.ac_unit,
                    backgroundColor: const Color.fromRGBO(100, 200, 200, 1),
                    onPressed: () { },
                  ),
                  const SizedBox(width: 20),
                  NavButton(
                    title: '布局', label: 'layout', icon: Icons.ac_unit,
                    backgroundColor: const Color.fromRGBO(10, 120, 250, 1),
                    onPressed: () { },
                  ),
                ],
              ), const SizedBox(height: 20),
              Row(
                children: [
                  NavButton(
                    title: '布局', label: 'layout', icon: Icons.ac_unit,
                    backgroundColor: const Color.fromRGBO(100, 200, 200, 1),
                    onPressed: () { },
                  ),
                  const SizedBox(width: 20),
                  NavButton(
                    title: '布局', label: 'layout', icon: Icons.ac_unit,
                    backgroundColor: const Color.fromRGBO(10, 120, 250, 1),
                    onPressed: () { },
                  ),
                ],
              ), const SizedBox(height: 20),
              Row(
                children: [
                  NavButton(
                    title: '布局', label: 'layout', icon: Icons.ac_unit,
                    backgroundColor: const Color.fromRGBO(100, 200, 200, 1),
                    onPressed: () { },
                  ),
                  const SizedBox(width: 20),
                  NavButton(
                    title: '布局', label: 'layout', icon: Icons.ac_unit,
                    backgroundColor: const Color.fromRGBO(10, 120, 250, 1),
                    onPressed: () { },
                  ),
                ],
              ), const SizedBox(height: 20),
              Row(
                children: [
                  NavButton(
                    title: '布局', label: 'layout', icon: Icons.ac_unit,
                    backgroundColor: const Color.fromRGBO(100, 200, 200, 1),
                    onPressed: () { },
                  ),
                  const SizedBox(width: 20),
                  NavButton(
                    title: '布局', label: 'layout', icon: Icons.ac_unit,
                    backgroundColor: const Color.fromRGBO(10, 120, 250, 1),
                    onPressed: () { },
                  ),
                ],
              ), const SizedBox(height: 20),
              Row(
                children: [
                  NavButton(
                    title: '布局', label: 'layout', icon: Icons.ac_unit,
                    backgroundColor: const Color.fromRGBO(100, 200, 200, 1),
                    onPressed: () { },
                  ),
                  const SizedBox(width: 20),
                  NavButton(
                    title: '布局', label: 'layout', icon: Icons.ac_unit,
                    backgroundColor: const Color.fromRGBO(10, 120, 250, 1),
                    onPressed: () { },
                  ),
                ],
              ), const SizedBox(height: 20),
            ],
          ),
        )
      ],
    );
  }
}
