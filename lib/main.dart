import 'package:flutter/material.dart';
import 'package:miniapp/screens/home/category/category.dart';

import 'screens/onBoarding/on_board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: OnBoardingScreen(),
      home: CategoryScreenData()
    );
  }
}

