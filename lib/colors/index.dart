import 'package:flutter/material.dart';
import '../utils.dart';


class ColorPreset {
  /// 嫣红
  static ColorTheme red = new ColorTheme(
    color: Color.fromRGBO(229, 77, 66, 1),
    textColor: Colors.white
  );
  /// 桔橙
  static ColorTheme orange = new ColorTheme(
    color: Color.fromRGBO(243, 122, 29, 1),
    textColor: Colors.white
  );
  /// 明黄
  static ColorTheme yellow = new ColorTheme(
    color: Color.fromRGBO(250, 189, 12, 1),
    textColor: Color.fromRGBO(33, 33, 33, 1)
  );
  /// 橄榄
  static ColorTheme olive = new ColorTheme(
    color: Color.fromRGBO(142, 198, 65, 1),
    textColor: Colors.white
  );
  /// 森绿
  static ColorTheme green = new ColorTheme(
    color: Color.fromRGBO(56, 183, 78, 1),
    textColor: Colors.white
  );
  /// 天青
  static ColorTheme cyan = new ColorTheme(
    color: Color.fromRGBO(27, 188, 180, 1),
    textColor: Colors.white
  );
  /// 海蓝
  static ColorTheme blue = new ColorTheme(
    color: Color.fromRGBO(0, 128, 253, 1),
    textColor: Colors.white
  );
  /// 姹紫
  static ColorTheme purple = new ColorTheme(
    color: Color.fromRGBO(104, 58, 183, 1),
    textColor: Colors.white
  );
  /// 木槿
  static ColorTheme mauve = new ColorTheme(
    color: Color.fromRGBO(158, 37, 174, 1),
    textColor: Colors.white
  );
  /// 桃粉
  static ColorTheme pink = new ColorTheme(
    color: Color.fromRGBO(226, 59, 151, 1),
    textColor: Colors.white
  );
  /// 棕褐
  static ColorTheme brown = new ColorTheme(
    color: Color.fromRGBO(165, 105, 71, 1),
    textColor: Colors.white
  );
  /// 玄灰
  static ColorTheme grey = new ColorTheme(
    color: Color.fromRGBO(134, 154, 163, 1),
    textColor: Colors.white
  );
  /// 草灰
  static ColorTheme gray = new ColorTheme(
    color: Color.fromRGBO(241, 241, 241, 1),
    textColor: Color.fromRGBO(33, 33, 33, 1)
  );
  /// 墨黑
  static ColorTheme black = new ColorTheme(
    color: Color.fromRGBO(52, 52, 52, 1),
    textColor: Colors.white
  );
  /// 雅白
  static ColorTheme white = new ColorTheme(
    color: Color.fromRGBO(255, 255, 255, 1),
    textColor: Color.fromRGBO(55, 55, 55, 1)
  );
  /// 禁用
  static ColorTheme disabled = new ColorTheme(
    color: Color.fromRGBO(255, 255, 255, 1),
    textColor: Color.fromRGBO(55, 55, 55, 1)
  );

  /// 魅红 渐变色
  static ColorTheme charmRed = new ColorTheme(
    gradient: LinearGradient(
      begin: const Alignment(0, 1.5),
      colors: [ Color(0xFFF43F3B), Color(0xFFEC008C) ]
    ),
    textColor: Colors.white
  );
  /// 鎏金色
  static ColorTheme golding = new ColorTheme(
    gradient: LinearGradient(
      begin: const Alignment(0, 1.5),
      colors: [ Color(0xFFFF9700), Color(0xFFED1C24) ]
    ),
    textColor: Colors.white
  );
  /// 翠绿 渐变色
  static ColorTheme jadeGreen = new ColorTheme(
    gradient: LinearGradient(
      begin: const Alignment(0, 1.5),
      colors: [ Color(0xFF39D54A), Color(0xFF8DC63F) ]
    ),
    textColor: Colors.white
  );
  /// 靛青 渐变色
  static ColorTheme indigo = new ColorTheme(
    gradient: LinearGradient(
      begin: const Alignment(0, 1.5),
      colors: [ Color(0xFF0081FF), Color(0xFF1CBBB4) ]
    ),
    textColor: Colors.white
  );
  ///惑紫  渐变色
  static ColorTheme charmPurple = new ColorTheme(
    gradient: LinearGradient(
      begin: const Alignment(0, 1.5),
      colors: [ Color(0xFF9000FF), Color(0xFF5E00FF) ]
    ),
    textColor: Colors.white
  );
  ///霞彩  渐变色
  static ColorTheme sunset = new ColorTheme(
    gradient: LinearGradient(
      begin: const Alignment(0, 1.5),
      colors: [ Color(0xFFEC008C), Color(0xFF6739B6) ]
    ),
    textColor: Colors.white
  );
}


class ColorTheme {
  /// 背景颜色
  Color color;
  /// 正文文本
  Color textColor; // 正文文本
  /// 渐变背景色
  Gradient gradient;
  // 突出文本颜色
  // 次要文本颜色
  ColorTheme({
    this.color,
    this.textColor,
    this.gradient,
  }){
    this.color = this.color ?? ColorPreset.gray.color;
    this.textColor = this.textColor ?? ColorPreset.gray.textColor;
  }
}  