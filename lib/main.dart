// ignore_for_file: prefer_const_constructors
import 'package:food_app_project/Screens/food/popular_food_details.dart';
import 'package:food_app_project/Screens/food/recommended_food_detail.dart';
import 'package:food_app_project/controller/popular_product_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'Screens/home/home_page.dart';
import 'helper/dependacies.dart' as dep;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      title: "Food Ordering App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MainFoodPage()
    );
  }
}

