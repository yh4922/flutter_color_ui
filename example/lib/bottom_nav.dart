import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: _bottomNavigationColor),
          label: 'HOME'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.email, color: _bottomNavigationColor),
          label: 'Email'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pages, color: _bottomNavigationColor),
          label: 'PAGES'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.airplay, color: _bottomNavigationColor),
          label: 'AIRPLAY'
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
