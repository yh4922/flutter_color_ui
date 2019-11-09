import 'package:flutter/material.dart';
import 'package:color_ui/color_ui.dart';

class GridLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(height: 20, color: Colors.grey[200]),
        ListTile(title: Text('等分列')),
        Divider(height: 1),
        Container(
          padding: EdgeInsets.all(10),
          child: GridView(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 20.0,
            ),
            children: <Widget>[
              ColorButton(
                child: '1'
              ),
            ],
          ),
        )
      ],
    );
  }
}