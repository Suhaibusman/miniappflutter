import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniapp/Data/addtocartlist.dart';
import 'package:miniapp/screens/checkoutpage/cartscreen.dart';
import 'package:miniapp/widgets/constant/colors.dart';

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
               InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreenData(),)),
                  child: Stack(
  children: [
    SvgPicture.asset(
      "assets/images/carticonwhite.svg",
      height: 24,
      width: 24,
      fit: BoxFit.cover,
    ),
    Positioned(
      top: 0, // Align to the top edge of the Stack
      right: 0, // Align to the right edge of the Stac
      child: CircleAvatar(
        radius: 9,
        backgroundColor: MyColors.darkYellowColor,
        child: Center(
          child: Text(
            addtoCartitems.length.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontFamily: "Manrope",
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    )
  ],
)

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