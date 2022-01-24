import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  /// 标题
  final String title;
  /// 标签
  final String label;
  /// 图标
  final IconData icon;
  /// 点击回调
  final Function() onPressed;
  /// 背景颜色
  final Color backgroundColor;
  const NavButton({
    Key? key,
    required this.title,
    required this.label,
    required this.icon,
    required this.onPressed,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Stack(
      children: [
        Container(
          height: 100,
          margin: const EdgeInsets.only(top: 5, left: 12, right: 12),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: backgroundColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(12)
          ),
        ),
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12)
          ),
          padding: EdgeInsets.all(30),
        )
      ],
    ));
  }
}