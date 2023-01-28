import 'package:flutter/material.dart';
import 'my_colors.dart';

class MyFontWeight {
  static FontWeight light = FontWeight.w400;
  static FontWeight regular = FontWeight.w500;
  static FontWeight normal = FontWeight.w600;
  static FontWeight semiBold = FontWeight.bold;
  static FontWeight bold = FontWeight.w800;
  static FontWeight extraBold = FontWeight.w900;
}

class MyStyles {
  static TextStyle blue10Normal = TextStyle(fontSize: 10, fontWeight: MyFontWeight.normal, color: MyColors.blue);
}
