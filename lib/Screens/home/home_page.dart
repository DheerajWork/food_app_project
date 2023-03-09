import 'package:flutter/material.dart';
import 'package:food_app_project/src/custom%20_widget/big_Text.dart';
import 'package:food_app_project/src/custom%20_widget/small_text.dart';
import 'package:food_app_project/src/utils/dimensions.dart';
import 'package:food_app_project/src/utils/my_colors.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Column(
        children:[
          //Showing header
          Container(
            margin: EdgeInsets.only(top: Dimensions.height45,bottom: Dimensions.height15),
          padding: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  BigText(text: "India",color: MyColors.mainColor,),
                  Row(
                    children:[
                     SmallText(text: "Ajmer",color: Colors.black54,),
                     Icon(Icons.arrow_drop_down,size: Dimensions.icon25,
                     )
                    ]
                  )
                ],
              ),
              Container(
                width: Dimensions.height45,
                height: Dimensions.height45,
                child: Icon(Icons.search,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: MyColors.mainColor,
                ),
              )
            ],
          )
        ),
          //Showing body
          Expanded(child: SingleChildScrollView(child: FoodPageBody())),
        ]
      ),
    ); 
    
  }
}
