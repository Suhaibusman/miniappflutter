import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryTopBar extends StatelessWidget {
  const CategoryTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: const Color(0xff2A4BA0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    "Hey, Suhaib",
                    style: TextStyle(
                        color: Color(0xffF8F9FB),
                        fontSize: 22,
                        fontFamily: "Manrope",
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SvgPicture.asset(
                  "assets/images/Cart Icon.svg",
                  height: 30,
                )
              ],
            ),
          ),
  
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                      "Shop",
                      style: TextStyle(
                          color: Color(0xffF8F9FB),
                          fontSize: 38,
                          fontFamily: "Manrope",
                          fontWeight: FontWeight.w500),
                    ),
              ),
            const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                      "By Category",
                      style: TextStyle(
                          color: Color(0xffF8F9FB),
                          fontSize: 40,
                          fontFamily: "Manrope",
                          fontWeight: FontWeight.bold),
                    ),
              ),
          
          
        ],
      ),
    );
  }
}