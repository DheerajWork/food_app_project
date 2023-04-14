import 'package:flutter/material.dart';
import 'package:food_app_project/src/custom%20_widget/small_text.dart';

import '../utils/dimensions.dart';
import '../utils/my_colors.dart';
import 'big_Text.dart';
import 'icons_and_text_widgets.dart';

class AppColumn extends StatelessWidget {
  final String text;
  AppColumn({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Wrap(
                children: List.generate(
                    5,
                        (index) => Icon(
                      Icons.star,
                      color: MyColors.mainColor,
                      size: Dimensions.height15,
                    ))),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: '4.5'),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: '1248'),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "comments"),

          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: 'Normal',
                iconColor: MyColors.iconColor1),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: '1.7m',
                iconColor: MyColors.mainColor),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: '32 min',
                iconColor: MyColors.iconColor2)
          ],
        ),
      ],
    );
  }
}
