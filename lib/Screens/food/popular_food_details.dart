import 'package:flutter/material.dart';
import 'package:food_app_project/src/custom%20_widget/app_column.dart';
import 'package:food_app_project/src/custom%20_widget/app_icon.dart';
import 'package:food_app_project/src/custom%20_widget/expanded_text_widget.dart';
import 'package:food_app_project/src/utils/dimensions.dart';

import '../../src/custom _widget/big_Text.dart';
import '../../src/custom _widget/icons_and_text_widgets.dart';
import '../../src/custom _widget/small_text.dart';
import '../../src/utils/my_colors.dart';
import '../../src/utils/my_colors.dart';
import '../../src/utils/my_colors.dart';
import '../../src/utils/my_colors.dart';

class PopularFoodDetails extends StatelessWidget {
  var numberOfItems=0;
  PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: Dimensions.popular_img_size,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/images/Noddle.jpg'),
                      fit: BoxFit.fill)),
            ),
          ),
          Positioned(
            left: Dimensions.width20,
            right: Dimensions.width20,
            top: Dimensions.height25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(onTap: () {Navigator.pop(context);}, child: AppIcon(icon: Icons.arrow_back)),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popular_img_size - Dimensions.height20,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20)),
                  color: Colors.white),
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: 'Chinese Side',
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                          child: ExpendedTextWidget(
                              text:
                                  'cariejofgioew  oiwjgfrepaio;jn  jiojq3rw4giohjoin  hfgqiouph hiuhvdfsijbnhiuw3 hhu  u7hrvuh hphsadfnijvhu79  frhiuapserwghfipugh  iuewghfriuhiu   efrwghiuehrwfiuhn ierf iojmv  ofdsmv jmvkcm fvdspjm dfspjkm v rpmodekfffjefffffffffff  fffffffffffffffffffffffwaaaaaaa eeeeeeeeee eeeeeeeeeeeeeeeee qwwwwwwwww ')))
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: MyColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.radius20 * 2),
                topLeft: Radius.circular(Dimensions.radius20 * 2))),
        height: Dimensions.bottomHeight,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.height20,
            right: Dimensions.height20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(Dimensions.height20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius20)),
              child: StatefulBuilder(
                builder: (context, setState) =>Row(
                  children: [
                    InkWell(
                      onTap: (){
                        if(numberOfItems!=0){
                          numberOfItems--;
                        }
                        setState((){});
                      },
                      child: Icon(
                        Icons.remove,
                        color: MyColors.signColor,
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.width10,
                    ),
                    BigText(text: '$numberOfItems'),
                    SizedBox(
                      width: Dimensions.width10,
                    ),
                    InkWell(
                      onTap: (){
                        numberOfItems++;
                        setState((){});
                      },
                      child: Icon(
                        Icons.add,
                        color: MyColors.signColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: BigText(
                text: '\$10 | Add to cart',
                color: Colors.white,
              ),
              padding: EdgeInsets.all(Dimensions.radius20),
              decoration: BoxDecoration(
                  color: MyColors.mainColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius20)),
            )
          ],
        ),
      ),
    );
  }
}
