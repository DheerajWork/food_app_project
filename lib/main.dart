// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'home/home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "food panda",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MainFoodPage()
    );
  }
}