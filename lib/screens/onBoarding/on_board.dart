

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miniapp/screens/onBoarding/widgets/text.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}
final PageController _pageController = PageController();
List topBar =["one","two"];
List str2 =["1","2"];
class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: const Color(0xff2A4BA0),
           body: SafeArea(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.5,
              child: PageView.builder(
                controller: _pageController,
                itemCount: topBar.length,
                itemBuilder: (context, index) {
                return Container(
                  
                color: Colors.transparent,
                           height: MediaQuery.of(context).size.height*0.4,
                           width: MediaQuery.of(context).size.width,
                child:  Padding(
                  padding: const EdgeInsets.only(left: 42 , top: 20 ,right:50),
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // OnBoardText(textData: "Your holiday shopping delivered to Screen ${topBar[index]}"),
                      const OnBoardText(textData: "Your holiday"),
                      const OnBoardText(textData: "shopping"),
                      const OnBoardText(textData: "delivered to Screen"),
                      Row(
                        children: [
                          OnBoardText(textData: " ${topBar[index]}"),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: SvgPicture.asset("assets/images/Emoji.svg"),
                          ) ,
                        ],
                      ),
                      
                       Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "There's something for everyone to enjoy with Sweet Shop Favourites Screen ${str2[index]}",
                        style: const TextStyle(color: Color(0xffB2BBCE), fontSize: 18),
                      ),
                    ),
                  ),
                    ],
                  ),
                ),
                );             },)
            ),
           )
    );
  }
}
