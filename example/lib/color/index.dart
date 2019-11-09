import 'package:flutter/material.dart';
import 'package:color_ui/color_ui.dart';

List<Map> darkColor = [
  {'theme': ColorPreset.red, 'code': 'Red', 'name': '嫣红'},
  {'theme': ColorPreset.orange, 'code': 'Orange', 'name': '桔橙'},
  {'theme': ColorPreset.yellow, 'code': 'Yellow', 'name': '明黄'},
  {'theme': ColorPreset.olive, 'code': 'Olive', 'name': '橄榄'},
  {'theme': ColorPreset.green, 'code': 'Green', 'name': '森绿'},
  {'theme': ColorPreset.cyan, 'code': 'Cyan', 'name': '天青'},
  {'theme': ColorPreset.blue, 'code': 'Blue', 'name': '海蓝'},
  {'theme': ColorPreset.purple, 'code': 'Purple', 'name': '姹紫'},
  {'theme': ColorPreset.mauve, 'code': 'Mauve', 'name': '木槿'},
  {'theme': ColorPreset.pink, 'code': 'Pink', 'name': '桃粉'},
  {'theme': ColorPreset.brown, 'code': 'Brown', 'name': '棕褐'},
  {'theme': ColorPreset.grey, 'code': 'Grey', 'name': '玄灰'},
  {'theme': ColorPreset.gray, 'code': 'Gray', 'name': '草灰'},
  {'theme': ColorPreset.black, 'code': 'Black', 'name': '墨黑'},
  {'theme': ColorPreset.white, 'code': 'White', 'name': '雅白'},
];

List<Map> gradualColor = [
  {'theme': ColorPreset.charmRed, 'code': '#F43F3B - #EC008C', 'name': '魅红'},
  {'theme': ColorPreset.golding, 'code': '#FF9700 - #ED1C24', 'name': '鎏金'},
  {'theme': ColorPreset.jadeGreen, 'code': '#39B54A - #8DC63F', 'name': '翠绿'},
  {'theme': ColorPreset.indigo, 'code': '#0081FF - #1CBBB4', 'name': '靛青'},
  {'theme': ColorPreset.charmPurple, 'code': '#9000FF - #5E00FF', 'name': '惑紫'},
  {'theme': ColorPreset.sunset, 'code': '#EC008C - #6739B6', 'name': '霞彩'}
];
 

class ColorPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('背景颜色'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text('深色背景')),
          Divider(height: 1),
          Container(
            padding: EdgeInsets.all(20),
            color: Color.fromRGBO(241, 241, 241, 1),
            child: ColorGrid(
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              itemCount: 15,
              itemBuilder: (int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: darkColor[index]['theme'].color,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: darkColor[index]['theme'].color,
                        offset: Offset(3, 3),
                        blurRadius: 10
                      )
                    ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(darkColor[index]['name'], style: TextStyle(color: darkColor[index]['theme'].textColor)),
                      Text(darkColor[index]['code'], style: TextStyle(color: darkColor[index]['theme'].textColor)),
                    ],
                  ),
                );
              },
            ),
          ),
          ListTile(title: Text('浅色背景')),
          Divider(height: 1),
          Container(
            padding: EdgeInsets.all(20),
            color: Color.fromRGBO(241, 241, 241, 1),
            child: ColorGrid(
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              itemCount: 12,
              itemBuilder: (int index) {
                ColorTheme theme = ColorTheme().tinge(darkColor[index]['theme']);
                return Container(
                  decoration: BoxDecoration(
                    color: theme.color,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(darkColor[index]['name'], style: TextStyle(color: theme.textColor)),
                      Text(darkColor[index]['code'], style: TextStyle(color: theme.textColor)),
                    ],
                  ),
                );
              },
            ),
          ),
          ListTile(title: Text('渐变被禁')),
          Divider(height: 1),
          Container(
            padding: EdgeInsets.all(20),
            color: Color.fromRGBO(241, 241, 241, 1),
            child: ColorGrid(
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.5,
              count: 2,
              itemCount: 6,
              itemBuilder: (int index) {
                return Container(
                  decoration: BoxDecoration(
                    gradient: gradualColor[index]['theme'].gradient,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(gradualColor[index]['name'], style: TextStyle(color: gradualColor[index]['theme'].textColor)),
                      Text(gradualColor[index]['code'], style: TextStyle(color: gradualColor[index]['theme'].textColor)),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}