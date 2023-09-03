

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miniapp/screens/onBoarding/widgets/text.dart';
import 'package:miniapp/screens/onBoarding/widgets/topdata.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
           backgroundColor: Color(0xff2A4BA0),
           body: SafeArea(
            child: Column(
              children: [
                TopData()
              ],
            ),
           )
    );
  }
}
