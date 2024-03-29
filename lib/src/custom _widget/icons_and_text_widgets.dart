import 'package:flutter/material.dart';
import 'package:food_app_project/src/custom%20_widget/small_text.dart';
import 'package:food_app_project/src/utils/dimensions.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  
  final Color iconColor;
  


  const IconAndTextWidget({
    Key? key,
    required this.icon,
    required this.text,
    
    required this.iconColor
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,
          size: Dimensions.icon25,
        ),
        SizedBox(width: Dimensions.width5,),
        SmallText(text: text,)
      ],
    );
  }
}