import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// CupertinoActivityIndicator
import '../colors/index.dart';

// 按钮大小类型枚举
enum ColorButtonSize {
  acquiescent, /// 默认按钮大小
  mini, /// mini按钮大小
}
/// 按钮大小配置
class ColorButtonSizeOpt {
  /// 字体大小
  final double fontSize;
  /// 按钮高度
  final double height;
  /// 图标大小
  final double iconSize;
  /// 边框大小
  final double borderSize;
  /// 圆角大小
  final double borderRadius;
  /// 按钮左右边距
  final double padding;
  ColorButtonSizeOpt({
    this.fontSize = 16,
    this.height = 40,
    this.iconSize = 14,
    this.borderSize = 0.5,
    this.borderRadius = 4,
    this.padding = 20
  });
}
// 预设的按钮大小
final List<ColorButtonSizeOpt> _sizeConfig = [
  ColorButtonSizeOpt(),
  ColorButtonSizeOpt(
    fontSize: 14,
    height: 30,
    iconSize: 12,
    borderSize: 0.3,
    borderRadius: 2,
    padding: 10
  )
];



class ColorButton extends StatelessWidget {
  /// 内容
  final dynamic child;
  /// 按钮是否禁用
  final bool disabled;
  /// 按钮是否加载中
  final bool loading;
  /// 按钮是否为空心按钮
  final bool hollow;
  /// 按钮图标
  final IconData icon;
  /// 按钮大小自定义配置
  ColorButtonSizeOpt size;
  /// 按钮大小类型
  final ColorButtonSize sizeType;
  /// 按钮主题
  ColorTheme themm;
  /// 按钮阴影
  /// 因为flutter 的阴影会出现在元素内部 如果没有背景颜色叠加会很丑
  /// 所以空心按钮的 阴影设置无效
  final double elevation;
  /// 按钮点击事件
  Function onTap;
  final bool circular;
  ColorButton({
    @required this.child,
    this.disabled = false, // 默认不是禁用状态
    this.loading = false, // 默认不是加载状态
    this.hollow = false, // 默认不是空心状态
    this.icon,
    this.size,
    this.sizeType = ColorButtonSize.acquiescent, // 不设置为默认按钮大小
    this.themm,
    this.elevation = 0,
    this.onTap,
    this.circular = false, // 默认不是圆形按钮
  }){
    /// 设置默认主题
    this.themm = this.themm ?? ColorTheme();
    /// 没有传入 size 设置默认的大小配置
    this.size = this.size ?? _sizeConfig[this.sizeType.index];
    /// 设置默认空事件  事件为空的话 没有水波纹效果
    this.onTap = this.onTap ?? () {};
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _childList = [];
    // 设置按钮图标
    if (this.loading) { // 按钮是加载状态
      _childList.add(Transform.translate(
        offset: Offset(-5, 1),
        child: CupertinoActivityIndicator(
          radius: this.size.iconSize * 0.5,
        )
      ));
    } else if (this.icon != null) { // 不是loading状态时 有传入图标
      _childList.add(Transform.translate(
        offset: Offset(-5, 1),
        child: Icon(
          this.icon,
          size: this.size.iconSize,
          /// 空心按钮下图标和文字的颜色为按钮主色
          color: this.hollow ? this.themm.color : this.themm.textColor,
        )
      ));
    }
    // 设置按钮文字内容
    if (this.child is String) {
      _childList.add(Text(
        this.child,
        style: TextStyle(
          fontSize: this.size.fontSize,
          color: this.hollow ? this.themm.color : this.themm.textColor,
        ),
      ));
    } else {
      _childList.add(this.child);
    }
    /// 子元素容器
    Widget _childBox = Row(
      // 内容全部居中
      mainAxisAlignment: MainAxisAlignment.center,
      // 按钮大小 mini状态的按钮更与内容自动调整宽度
      // 正常状态的按钮 自动占满父级宽度
      mainAxisSize: this.sizeType.index == 0 ? MainAxisSize.max : MainAxisSize.min,
      children: _childList,
    );

    return Opacity(
      opacity: this.disabled ? 0.3 : 1,
      child: Material(
        borderRadius: BorderRadius.circular(this.circular ? 100 : this.size.borderRadius),
        // 设置按钮背景颜色
        color: this.hollow ? Colors.transparent : this.themm.color,
        // 空心按钮禁用阴影
        elevation: this.hollow ? 0 : this.elevation,
        child: InkWell(
          /// 加载中 或者禁用状态都禁用点击事件
          onTap: this.disabled || this.loading ? null : this.onTap,
          /// 圆形按钮是禁用不使用预设的按钮圆角
          borderRadius: BorderRadius.circular(this.circular ? 100 : this.size.borderRadius),
          child: Container(
            height: this.size.height,
            padding: EdgeInsets.only(left: this.size.padding, right: this.size.padding),
            decoration: BoxDecoration(
              color: null,
              gradient: this.themm.gradient,
              borderRadius: BorderRadius.circular(this.circular ? 100 : this.size.borderRadius),
              border: this.hollow ? Border.all(
                width: this.size.borderSize,
                color: this.themm.color
              ) : null
            ),
            child: _childBox
          )
        ),
      )
    );
  }
}