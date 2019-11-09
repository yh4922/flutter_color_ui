import 'package:flutter/material.dart';
import 'package:color_ui/color_ui.dart';
import 'package:color_ui/utils.dart';

import './flex_layout.dart';
import './grid_layout.dart';
import './assist_layout.dart';

class TabsBtn extends StatelessWidget {
  String title;
  bool active;
  Function onTap;
  TabsBtn(this.title, this.active, {this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        padding: setEdgeInsets(0, 10, 0, 10),
        margin: setEdgeInsets(0, 10, 0, 10),
        alignment: Alignment(0, 0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: active ? ColorPreset.blue.color : Colors.white,
              width: 2
            )
          )
        ),
        child: Text(
          title,
          style: TextStyle(
            color: active ? ColorPreset.blue.color : Colors.black54
          ),
        ),
      ),
    );
  }
}


class LayoutPages extends StatefulWidget {
  @override
  _LayoutPagesState createState() => _LayoutPagesState();
}

class _LayoutPagesState extends State<LayoutPages> with SingleTickerProviderStateMixin {
  TabController tabController;
  List<bool> tabStatus;
  @override
  void initState() {
    // TODO: implement initState
    tabStatus = [true, false, false];
    tabController = new TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    tabController.addListener(() {
      setState(() {
        tabStatus = [false, false, false];
        tabStatus[tabController.index] = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('布局'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border(bottom: BorderSide(color: Colors.white, width: 2))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TabsBtn('Flex布局', tabStatus[0], onTap: () {
                  tabController.animateTo(0, duration: Duration(milliseconds: 200));
                }),
                TabsBtn('Grid布局', tabStatus[1], onTap: () {
                  tabController.animateTo(1, duration: Duration(milliseconds: 200));
                }),
                TabsBtn('辅助布局', tabStatus[2], onTap: () {
                  tabController.animateTo(2, duration: Duration(milliseconds: 200));
                }),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController  ,
              children: <Widget>[
                FlexLayout(),
                GridLayout(),
                AssistLayout()
              ],
            )
          )
        ],
      )
    );
  }
}