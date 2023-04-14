import 'package:flutter/material.dart';
import 'package:food_app_project/src/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color bgColor;
  final double size;

  const AppIcon(
      {Key? key,
      required this.icon,
      this.bgColor = const Color(0xFFfcf4e4),
      this.iconColor = const Color(0xFF756d54),
      this.size = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Icon(
        icon,
        color: iconColor,
        size: Dimensions.popular_icon_size,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2), color: bgColor),
    );
  }
}
