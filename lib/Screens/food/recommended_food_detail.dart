import 'package:flutter/material.dart';
import 'package:food_app_project/src/custom%20_widget/app_icon.dart';
import 'package:food_app_project/src/custom%20_widget/expanded_text_widget.dart';
import 'package:food_app_project/src/utils/dimensions.dart';
import 'package:food_app_project/src/utils/my_colors.dart';
import 'package:get/get.dart';

import '../../src/custom _widget/big_Text.dart';

class RecommendedFoodDetail extends StatefulWidget {

  RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  State<RecommendedFoodDetail> createState() => _RecommendedFoodDetailState();
}

class _RecommendedFoodDetailState extends State<RecommendedFoodDetail> {
  var numberOfItems=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              toolbarHeight: 70,
              title: Stack(

                children: [
                  // AppIcon(
                  //   icon: Icons.clear,
                  //   bgColor: Colors.white,
                  // ),
                  Align(
                    alignment: Alignment.topRight,
                    child: AppIcon(
                          icon: Icons.shopping_cart_outlined,
                          bgColor: Colors.white,
                        ),
                  )
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimensions.radius20),
                        topLeft: Radius.circular(Dimensions.radius20),
                      )),
                  child: Center(
                      child: BigText(
                          size: Dimensions.font26, text: 'Chinese Side')),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                      top: Dimensions.height5, bottom: Dimensions.height10),
                ),
              ),
              pinned: true,
              backgroundColor: MyColors.yellowColor,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'asset/images/Noddle.jpg',
                  fit: BoxFit.cover,
                ),
              )),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: ExpendedTextWidget(
                  text:
                      'cariejofgioew oiwjgfrepaio;jn jiojq3rw4giohjoin uioahrepgu8eh oaihjrewfgiopwuhj hfgqiouph hiuhvdfsijbnhiuw3 hhu  u7hrvuh hphsadfnijvhu79  frhiuapserwghfipugh  iuewghfriuhiu   efrwghiuehrwfiuhn ierf iojmv  ofdsmv jmvkcm fvdspjm dfspjkm v rpmodekfffjefffffffffff  fffffffffffffffffffffffwaaaaaaa eeeeeeeeee eeeeeeeeeeeeeeeee qwwwwwwwww cariejofgioew  oiwjgfrepaio;jn  jiojq3rw4giohjoin  hfgqiouph hiuhvdfsijbnhiuw3 hhu  u7hrvuh hphsadfnijvhu79  frhiuapserwghfipugh  iuewghfriuhiu   efrwghiuehrwfiuhn ierf iojmv  ofdsmv jmvkcm fvdspjm dfspjkm v rpmodekfffjefffffffffff  fffffffffffffffffffffffwaaaaaaa eeeeeeeeee eeeeeeeeeeeeeeeee qwwwwwwwww cariejofgioew  oiwjgfrepaio;jn  jiojq3rw4giohjoin  hfgqiouph hiuhvdfsijbnhiuw3 hhu  u7hrvuh hphsadfnijvhu79  frhiuapserwghfipugh  iuewghfriuhiu   efrwghiuehrwfiuhn ierf iojmv  ofdsmv jmvkcm fvdspjm dfspjkm v rpmodekfffjefffffffffff  fffffffffffffffffffffffwaaaaaaa eeeeeeeeee eeeeeeeeeeeeeeeee qwwwwwwwww cariejofgioew  oiwjgfrepaio;jn  jiojq3rw4giohjoin  hfgqiouph hiuhvdfsijbnhiuw3 hhu  u7hrvuh hphsadfnijvhu79  frhiuapserwghfipugh  iuewghfriuhiu   efrwghiuehrwfiuhn ierf iojmv  ofdsmv jmvkcm fvdspjm dfspjkm v rpmodekfffjefffffffffff  fffffffffffffffffffffffwaaaaaaa eeeeeeeeee eeeeeeeeeeeeeeeee qwwwwwwwww cariejofgioew  oiwjgfrepaio;jn  jiojq3rw4giohjoin  hfgqiouph hiuhvdfsijbnhiuw3 hhu  u7hrvuh hphsadfnijvhu79  frhiuapserwghfipugh  iuewghfriuhiu   efrwghiuehrwfiuhn ierf iojmv  ofdsmv jmvkcm fvdspjm dfspjkm v rpmodekfffjefffffffffff  fffffffffffffffffffffffwaaaaaaa eeeeeeeeee eeeeeeeeeeeeeeeee qwwwwwwwww cariejofgioew  oiwjgfrepaio;jn  jiojq3rw4giohjoin  hfgqiouph hiuhvdfsijbnhiuw3 hhu  u7hrvuh hphsadfnijvhu79  frhiuapserwghfipugh  iuewghfriuhiu   efrwghiuehrwfiuhn ierf iojmv  ofdsmv jmvkcm fvdspjm dfspjkm v rpmodekfffjefffffffffff  fffffffffffffffffffffffwaaaaaaa eeeeeeeeee eeeeeeeeeeeeeeeee qwwwwwwwww cariejofgioew  oiwjgfrepaio;jn  jiojq3rw4giohjoin  hfgqiouph hiuhvdfsijbnhiuw3 hhu  u7hrvuh hphsadfnijvhu79  frhiuapserwghfipugh  iuewghfriuhiu   efrwghiuehrwfiuhn ierf iojmv  ofdsmv jmvkcm fvdspjm dfspjkm v rpmodekfffjefffffffffff  fffffffffffffffffffffffwaaaaaaa eeeeeeeeee eeeeeeeeeeeeeeeee qwwwwwwwww cariejofgioew  oiwjgfrepaio;jn  jiojq3rw4giohjoin  hfgqiouph hiuhvdfsijbnhiuw3 hhu  u7hrvuh hphsadfnijvhu79  frhiuapserwghfipugh  iuewghfriuhiu   efrwghiuehrwfiuhn ierf iojmv  ofdsmv jmvkcm fvdspjm dfspjkm v rpmodekfffjefffffffffff  fffffffffffffffffffffffwaaaaaaa eeeeeeeeee eeeeeeeeeeeeeeeee qwwwwwwwww ',
                ),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
                Dimensions.width20 * 2.5,
                Dimensions.height10,
                Dimensions.width20 * 2.5,
                Dimensions.height20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap:(){
                    if(numberOfItems!=0){
                      numberOfItems--;
                    }
                    setState(() {

                    });
                  },
                  child: AppIcon(
                    icon: Icons.remove,
                    iconColor: Colors.white,
                    bgColor: MyColors.mainColor,
                  ),
                ),
                BigText(
                  text: '\$12.88 ' + ' * ' + ' $numberOfItems ',
                  color: MyColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                InkWell(
                  onTap: (){
                    numberOfItems++;
                    setState(() {
                    });
                  },
                  child: AppIcon(
                      icon: Icons.add,
                      bgColor: MyColors.mainColor,
                      iconColor: Colors.white),
                )
              ],
            ),
          ),
          Container(
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
                  child: Icon(Icons.favorite,color: MyColors.mainColor,)
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
        ],
      ),
    );
  }
}
