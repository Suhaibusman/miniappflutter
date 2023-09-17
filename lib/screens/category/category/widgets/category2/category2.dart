import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesItemsScreen extends StatefulWidget {
  const CategoriesItemsScreen({super.key});

  @override
  State<CategoriesItemsScreen> createState() => _CategoriesItemsScreenState();
}

class _CategoriesItemsScreenState extends State<CategoriesItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/images/Group 73.svg"
              ,height: 40 ,width: 40,
              ),
              const Text("Items" ,style: TextStyle(fontFamily: "Manrope" ,fontSize: 16,fontWeight: FontWeight.w400),),
              SvgPicture.asset("assets/images/Search Icon.svg" ,colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              // ,height: 18 ,width:  18,
              ),
              SvgPicture.asset("assets/images/Cart Icon.svg" ,height: 24 ,width: 24,),

           
            ],
          )
        ],
      )),
    );
  }
}