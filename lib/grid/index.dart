import 'package:flutter/material.dart';

class ColorGrid extends StatefulWidget {
  /// 元素个数
  final int itemCount;
  /// 每行个数
  final int count;
  /// 主轴元素间隔  水平
  final double mainAxisSpacing;
  /// 副轴元素间隔  垂直
  final double crossAxisSpacing;
  /// 子元素宽高比
  final double childAspectRatio;
  // /// 子元素数组
  // List<Widget> children;
  /// 子元素生成
  final Widget Function(int index) itemBuilder;
  ColorGrid({
    @required this.itemCount,
    @required this.itemBuilder,
    this.count = 3,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.childAspectRatio = 1.0,
  });
  @override
  _ColorGridState createState() => _ColorGridState();
}

class _ColorGridState extends State<ColorGrid> {
  /// GlobalKey 用来获取父元素的宽度 计算子元素的宽度
  GlobalKey _boxKey = GlobalKey();
  /// 子元素宽度
  double _itemWidth = 0.0;

  _ColorGridState() {
    /// 初始化子元素宽度
    WidgetsBinding.instance.addPostFrameCallback(init);
  }

  void init(time) {
    setState(() {
      /// 计算去除主轴间距后剩余的宽度
      double _width = _boxKey.currentContext.size.width - widget.mainAxisSpacing * (widget.count - 1);
      /// 剩余宽度按照每行元素均分
      _itemWidth = _width / widget.count;
    });
  }

  @override
  Widget build(BuildContext context) {
    /// 子元素数组
    final List<Widget> children = [];
    /// 计算子元素可以分为多少行
    final int rowNum = (widget.itemCount / widget.count).ceil();
    /// 循环生成每一行的元素列表
    for (int rowIndex = 0; rowIndex < rowNum; rowIndex++) {
      /// 每一行的元素数组
      final List<Widget> list = [];
      /// 循环生成每一列的数组
      for (int index = 0; index < widget.count; index++) {
        final int eq = (rowIndex * widget.count) + index;
        if (eq <= widget.itemCount - 1) {
          list.add(Container(
            margin: EdgeInsets.only(
              /// 每一行第一个没有左边距
              left: index == 0 ? 0 : widget.mainAxisSpacing,
              /// 第一行没有上边距
              top: rowIndex == 0 ? 0 : widget.crossAxisSpacing,
            ),
            width: _itemWidth,
            height: _itemWidth * widget.childAspectRatio,
            child: widget.itemBuilder((rowIndex * widget.count) + index)
          ));
        }
      }
      children.add(Row(children: list));
    }

    return Container(
      key: _boxKey,
      child: Column(
        children: children
      )
    );
  }
}