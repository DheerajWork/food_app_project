import 'package:flutter/material.dart';
import 'package:food_app_project/home/food_page_body.dart';
import 'package:food_app_project/src/custom%20_widget/big_Text.dart';
import 'package:food_app_project/src/custom%20_widget/small_text.dart';
import 'package:food_app_project/src/utils/my_colors.dart';

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
          Container(
            margin: EdgeInsets.only(top: 45,bottom: 15),
          padding: EdgeInsets.only(left: 20,right: 20),
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
                     Icon(Icons.arrow_drop_down)
                    ]
                  )
                ],
              ),
              Container(
                width: 45,
                height: 45,
                child: Icon(Icons.search),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyColors.mainColor,
                ),
              )
            ],
          )
        ),
          FoodPageBody(),
        ]
      ),
    ); 
    
  }
}
