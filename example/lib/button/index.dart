import 'dart:io';

import 'package:flutter/material.dart';
import 'package:color_ui/color_ui.dart';


Widget rennderColorButton (String text, ColorTheme themm) {
  return ColorButton(
    child: text,
    circular: true,
    elevation: 4,
    themm: themm,
  );
}

Widget rennderHollowButton (String text, ColorTheme themm) {
  return ColorButton(
    child: text,
    circular: true,
    themm: themm,
    hollow: true,
  );
}

class ButtonPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text('按钮形状')),
          Divider(height: 1),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ColorButton(
                  child: '默认',
                ),
                ColorButton(
                  child: '默认',
                  circular: true,
                ),
                ColorButton(
                  child: '',
                  icon: Icons.add,
                  circular: true,
                )
              ],
            ),
          ),
          Container(height: 20, color: Colors.grey[100]),
          ListTile(title: Text('按钮尺寸')),
          Divider(height: 1),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ColorButton(
                  child: '小尺寸',
                  circular: true,
                  sizeType: ColorButtonSize.mini,
                ),
                ColorButton(
                  child: '默认',
                  circular: true
                ),
                ColorButton(
                  child: '自定义',
                  circular: true,
                  size: ColorButtonSizeOpt(
                    fontSize: 18,
                    height: 50,
                    iconSize: 16,
                    borderSize: 1,
                    borderRadius: 8,
                    padding: 30
                  ),
                ),
              ]
            )
          ),
          Container(height: 20, color: Colors.grey[100]),
          ListTile(title: Text('按钮颜色')),
          Divider(height: 1),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      rennderColorButton('嫣红',ColorPreset.red),
                      rennderColorButton('桔橙',ColorPreset.orange),
                      rennderColorButton('明黄',ColorPreset.yellow),
                      rennderColorButton('橄榄',ColorPreset.olive),
                      rennderColorButton('森绿',ColorPreset.green),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      rennderColorButton('天青',ColorPreset.cyan),
                      rennderColorButton('海蓝',ColorPreset.blue),
                      rennderColorButton('姹紫',ColorPreset.purple),
                      rennderColorButton('木槿',ColorPreset.mauve),
                      rennderColorButton('桃粉',ColorPreset.pink),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      rennderColorButton('棕褐',ColorPreset.brown),
                      rennderColorButton('玄灰',ColorPreset.grey),
                      rennderColorButton('草灰',ColorPreset.gray),
                      rennderColorButton('墨黑',ColorPreset.black),
                      rennderColorButton('雅白',ColorPreset.white),
                    ],
                  ),
                )
              ],
            )
          ),
          Container(height: 20, color: Colors.grey[100]),
          ListTile(title: Text('镂空按钮')),
          Divider(height: 1),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      rennderHollowButton('嫣红',ColorPreset.red),
                      rennderHollowButton('桔橙',ColorPreset.orange),
                      rennderHollowButton('明黄',ColorPreset.yellow),
                      rennderHollowButton('橄榄',ColorPreset.olive),
                      rennderHollowButton('森绿',ColorPreset.green),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      rennderHollowButton('天青',ColorPreset.cyan),
                      rennderHollowButton('海蓝',ColorPreset.blue),
                      rennderHollowButton('姹紫',ColorPreset.purple),
                      rennderHollowButton('木槿',ColorPreset.mauve),
                      rennderHollowButton('桃粉',ColorPreset.pink),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      rennderHollowButton('棕褐',ColorPreset.brown),
                      rennderHollowButton('玄灰',ColorPreset.grey),
                      rennderHollowButton('草灰',ColorPreset.gray),
                      rennderHollowButton('墨黑',ColorPreset.black),
                      rennderHollowButton('雅白',ColorPreset.white),
                    ],
                  ),
                )
              ],
            )
          ),
          Container(height: 20, color: Colors.grey[100]),
          ListTile(title: Text('块状按钮')),
          Divider(height: 1),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                ColorButton(child: '玄灰', themm: ColorPreset.grey),
                Container(height: 10),
                ColorButton(child: '嫣红', themm: ColorPreset.red)
              ],
            ),
          ),
          Container(height: 20, color: Colors.grey[100]),
          ListTile(title: Text('无效状态')),
          Divider(height: 1),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                ColorButton(child: '无效状态', themm: ColorPreset.blue, disabled: true),
                Container(height: 10),
                ColorButton(child: '无效状态', themm: ColorPreset.blue, hollow: true, disabled: true)
              ],
            ),
          ),
          Container(height: 20, color: Colors.grey[100]),
          ListTile(title: Text('按钮加图标')),
          Divider(height: 1),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                ColorButton(
                  child: '图标', themm: ColorPreset.orange, icon: Icons.cloud_upload,
                ),
                Container(height: 10),
                ColorButton(
                  child: '加载', hollow: true, themm: ColorPreset.blue, loading: true,
                ),
                Container(height: 10),
                ColorButton(
                  child: '自定义图标', themm: ColorPreset.black, icon: ColorIcons.add,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}