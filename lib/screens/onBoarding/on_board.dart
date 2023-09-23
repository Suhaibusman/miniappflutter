

import 'package:flutter/material.dart';

import 'package:miniapp/screens/home/homescreen.dart';

import 'package:miniapp/screens/onBoarding/widgets/topdata.dart';
import 'package:miniapp/widgets/buttons.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
           backgroundColor: const Color(0xff2A4BA0),
           body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                 const TopData(),
                 Container(
                  height: 300,
                  width: 300,
                  color: Colors.transparent,
                   child: Image.asset("assets/images/shoppinggif.gif",
                   
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(bottom: 30),
                   child: CustomButtonWidget(buttonText: "Get Started", onPressed: (){

                    setState(() {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),)); 
                    });
                   },
                   borderColor: Colors.transparent, buttonHeight: 70, buttonWidth: 253, backgroundColor: const Color(0xffFAFBFD), fontColor: Colors.black, iconimage: "assets/images/Arrow 4.svg",),
                 )
              ],
            ),
           )
    );
  }
}
