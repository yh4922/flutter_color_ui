import 'package:flutter/material.dart';
import 'package:color_ui/color_ui.dart';

List<String> imgUrl = [
  'https://imgsa.baidu.com/forum/w%3D580/sign=a47dd8b0f4faaf5184e381b7bc5594ed/c2533d01213fb80e118a11413fd12f2eb8389403.jpg',
  'https://imgsa.baidu.com/forum/w%3D580/sign=0fc881fa193853438ccf8729a312b01f/92b5ddf9d72a60591fcf938c2134349b013bba87.jpg',
  'https://imgsa.baidu.com/forum/w%3D580/sign=838b72553387e9504217f3642039531b/cf898344ebf81a4c6484915fde2a6059242da628.jpg',
  'https://imgsa.baidu.com/forum/w%3D580/sign=17ae3a568b025aafd3327ec3cbecab8d/75475666d01609246da5de8ddd0735fae4cd34da.jpg'
];

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
          child: ColorGrid(
            count: 1,
            itemCount: 2,
            childAspectRatio: 0.13,
            itemBuilder: (int index) {
              return Container(
                color: index % 2 == 0 ? Color.fromRGBO(28, 187, 180, 1) : Color.fromRGBO(0, 129, 255, 1),
                child: Center(child: Text('${index+1}',style: TextStyle(fontSize: 18)))
              );
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: ColorGrid(
            count: 2,
            itemCount: 4,
            childAspectRatio: 0.13 * 2.2,
            itemBuilder: (int index) {
              return Container(
                color: index % 2 == 0 ? Color.fromRGBO(28, 187, 180, 1) : Color.fromRGBO(0, 129, 255, 1),
                child: Center(child: Text('${index+1}',style: TextStyle(fontSize: 18)))
              );
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: ColorGrid(
            count: 3,
            itemCount: 6,
            childAspectRatio: 0.13 * 3.3,
            itemBuilder: (int index) {
              return Container(
                color: index % 2 == 0 ? Color.fromRGBO(28, 187, 180, 1) : Color.fromRGBO(0, 129, 255, 1),
                child: Center(child: Text('${index+1}',style: TextStyle(fontSize: 18)))
              );
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: ColorGrid(
            count: 4,
            itemCount: 8,
            childAspectRatio: 0.13 * 4.4,
            itemBuilder: (int index) {
              return Container(
                color: index % 2 == 0 ? Color.fromRGBO(28, 187, 180, 1) : Color.fromRGBO(0, 129, 255, 1),
                child: Center(child: Text('${index+1}',style: TextStyle(fontSize: 18)))
              );
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: ColorGrid(
            count: 5,
            itemCount: 10,
            childAspectRatio: 0.13 * 5.5,
            itemBuilder: (int index) {
              return Container(
                color: index % 2 == 0 ? Color.fromRGBO(28, 187, 180, 1) : Color.fromRGBO(0, 129, 255, 1),
                child: Center(child: Text('${index+1}',style: TextStyle(fontSize: 18)))
              );
            },
          ),
        ),
        Container(height: 20, color: Colors.grey[200]),
        ListTile(title: Text('等高')),
        Divider(height: 1),
        Container(
          padding: EdgeInsets.all(10),
          child: ColorGrid(
            count: 4,
            itemCount: 4,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
            itemBuilder: (int index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imgUrl[index]),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadiusDirectional.circular(5)
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}