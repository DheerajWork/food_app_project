import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_app_project/Screens/food/popular_food_details.dart';
import 'package:food_app_project/Screens/food/recommended_food_detail.dart';
import 'package:food_app_project/src/custom%20_widget/app_column.dart';
import 'package:food_app_project/src/custom%20_widget/big_Text.dart';
import 'package:food_app_project/src/custom%20_widget/icons_and_text_widgets.dart';
import 'package:food_app_project/src/custom%20_widget/small_text.dart';
import 'package:food_app_project/src/utils/dimensions.dart';
import 'package:food_app_project/src/utils/my_colors.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  var _currPageValue = 0.0;
  double _scalFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ///////////////////////////Slider Section/////////////////////////
      Container(
        height: Dimensions.pageView,
        child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            }),
      ),
      //SizedBox(
      //   height: Dimensions.height10,
      // ),
      ///////////////////////////dots/////////////////////////
      DotsIndicator(
        dotsCount: 5,
        position: _currPageValue,
        decorator: DotsDecorator(
          activeColor: MyColors.mainColor,
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
      ///////////////////////////List of food and images/////////////////////////
      SizedBox(
        height: Dimensions.height30,
      ),
      ///////////////////////////////Popular Text////////////////////////
      Container(
        margin: EdgeInsets.only(left: Dimensions.height30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            BigText(text: 'Popular'),
            SizedBox(
              width: Dimensions.width10,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 3),
              child: BigText(
                text: '.',
                color: Colors.black26,
              ),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            Container(
              child: SmallText(
                text: 'Food pairing',
                color: Colors.black26,
              ),
            ),
          ],
        ),
      ),
      /////////////////////////List of food and images/////////////////////////
      ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RecommendedFoodDetail(),));
            },
            child: Container(
              width: double.infinity,
              height: Dimensions.listViewImgSize,
              margin: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(

                children: [
                  //////////image part
                  Container(
                    margin: EdgeInsets.only(bottom: Dimensions.height10),
                    width: Dimensions.listViewImgSize,
                    height: Dimensions.listViewImgSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      image: DecorationImage(
                          image: AssetImage("asset/images/Noddle.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  //////////text section
                  Expanded(
                    child: Container(
                      height: Dimensions.listViewTextSize,
                      // width: 240,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              Dimensions.radius15,
                            ),
                            bottomRight: Radius.circular(Dimensions.radius15),
                          ),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.height10),
                        child: AppColumn(text:'Chinese Side')
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      )
    ]);
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scalFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scalFactor + (_currPageValue - index + 1) * (1 - _scalFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scalFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = .8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scalFactor) / 2, 1);
    }

    return Transform(
        transform: matrix,
        child: Stack(children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PopularFoodDetails(),));
            },
            child: Container(
              height: Dimensions.pageViewContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.height10, right: Dimensions.height10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: index.isEven ? MyColors.blue : MyColors.mainColor,
                //Image.asset('asset/images/noodle.webp'),
                image: DecorationImage(
                    image: AssetImage("asset/images/Noddle.jpg"),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          Align(
              child: Container(
                  height: Dimensions.pageViewTextContainer,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(
                      left: Dimensions.height25,
                      right: Dimensions.height25,
                      top: Dimensions.height160),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: Dimensions.radius5,
                            offset: Offset(0, 5)),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-Dimensions.height5, 0)),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-Dimensions.height5, 0))
                      ]),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height10,
                        left: Dimensions.height15,
                        right: Dimensions.height15),
                    child: AppColumn(text: 'Chinese Side',),
                  ))),
        ]));
  }
}
