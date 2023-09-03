

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniapp/screens/onBoarding/widgets/text.dart';

class TopData extends StatefulWidget {
  const TopData({super.key});

  @override
  State<TopData> createState() => _TopDataState();
}

class _TopDataState extends State<TopData> {
final PageController _pageController = PageController();

List topBar =["one","two"];

List str2 =["1","2"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  height: MediaQuery.of(context).size.height*0.5,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: topBar.length,
                    itemBuilder: (context, index) {
                    return Container(
                      
                    color: Colors.transparent,
                               height: MediaQuery.of(context).size.height*0.4,
                               width: double.infinity,
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 42 , top: 20 ,right:50),
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisSize: MainAxisSize.min,

                        children: [
                           OnBoardText(textData: "Your holiday shopping delivered to Screen ${topBar[index]}"),
      
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: SvgPicture.asset("assets/images/Emoji.svg"),
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
                      const Divider(
                        color: Colors.blue,
                        thickness :3,
                        
                      )
                        ],
                      ),
                    ),
                    );             },)
                );
  }
}