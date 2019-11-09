import 'package:flutter/material.dart';
import 'package:color_ui/color_ui.dart';

class FlexLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(height: 20, color: Colors.grey[200]),
        ListTile(title: Text('固定尺寸')),
        Divider(height: 1),
        Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ColorButton(
                      child: '20%',
                      themm: ColorPreset.grey,
                    ),
                  ),
                  Expanded(flex: 4,child: Container())
                ],
              ),
              Container(height: 5),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: ColorButton(
                      child: '40%',
                      themm: ColorPreset.grey,
                    ),
                  ),
                  Expanded(flex: 3,child: Container())
                ],
              ),
              Container(height: 5),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ColorButton(
                      child: '50%',
                      themm: ColorPreset.grey,
                    ),
                  ),
                  Expanded(flex: 1,child: Container())
                ],
              ),
              Container(height: 5),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 6,
                    child: ColorButton(
                      child: '60%',
                      themm: ColorPreset.grey,
                    ),
                  ),
                  Expanded(flex: 4,child: Container())
                ],
              ),
              Container(height: 5),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: ColorButton(
                      child: '80%',
                      themm: ColorPreset.grey,
                    ),
                  ),
                  Expanded(flex: 1,child: Container())
                ],
              ),
            ],
          ),
        ),
        Container(height: 20, color: Colors.grey[200]),
        ListTile(title: Text('比例尺寸')),
        Divider(height: 1),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: ColorButton(
                        child: '1',
                        themm: ColorPreset.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: ColorButton(
                        child: '1',
                        themm: ColorPreset.grey,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: ColorButton(
                        child: '1',
                        themm: ColorPreset.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: ColorButton(
                        child: '2',
                        themm: ColorPreset.grey,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: ColorButton(
                        child: '1',
                        themm: ColorPreset.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: ColorButton(
                        child: '2',
                        themm: ColorPreset.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: ColorButton(
                        child: '3',
                        themm: ColorPreset.grey,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(height: 20, color: Colors.grey[200]),
        ListTile(title: Text('水平对齐')),
        Divider(height: 1),
        Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'start', themm: ColorPreset.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'start', themm: ColorPreset.grey),
                  )
                ],
              ),
              Divider(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'end', themm: ColorPreset.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'end', themm: ColorPreset.grey),
                  )
                ],
              ),
              Divider(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'center', themm: ColorPreset.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'center', themm: ColorPreset.grey),
                  )
                ],
              ),
              Divider(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'between', themm: ColorPreset.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'between', themm: ColorPreset.grey),
                  )
                ],
              ),
              Divider(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'around', themm: ColorPreset.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'around', themm: ColorPreset.grey),
                  )
                ],
              ),
              Divider(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'evenly', themm: ColorPreset.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'evenly', themm: ColorPreset.grey),
                  )
                ],
              )
            ],
          ),
        ),
        Container(height: 20, color: Colors.grey[200]),
        ListTile(title: Text('垂直对齐')),
        Divider(height: 1),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(
                      child: 'ColorUi', themm: ColorPreset.grey, size: ColorButtonSizeOpt(height: 80)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'start', themm: ColorPreset.grey),
                  )
                ],
              ),
              Divider(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(
                      child: 'ColorUi', themm: ColorPreset.grey, size: ColorButtonSizeOpt(height: 80)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'center', themm: ColorPreset.grey),
                  )
                ],
              ),
              Divider(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(
                      child: 'ColorUi', themm: ColorPreset.grey, size: ColorButtonSizeOpt(height: 80)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ColorButton(child: 'end', themm: ColorPreset.grey),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}