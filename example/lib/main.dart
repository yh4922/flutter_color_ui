import 'package:flutter/material.dart';

import 'views/basics_page.dart';
import 'views/component_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ColorUI example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;
  List<Widget> pages = [
    const BasicsPage(),
    const ComponentPage(),
    const BasicsPage(),
    const BasicsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: pageIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Email'),
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: 'PAGES'),
          BottomNavigationBarItem(icon: Icon(Icons.airplay), label: 'AIRPLAY'),
        ],
        onTap: (int index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
