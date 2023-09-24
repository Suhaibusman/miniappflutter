import 'package:flutter/material.dart';
import 'package:miniapp/Data/addtocartlist.dart';
import 'package:miniapp/screens/checkoutpage/showmorecategorypage.dart';
import 'package:miniapp/screens/checkoutpage/widgets/cartitemsinlist.dart';

import 'package:miniapp/screens/checkoutpage/widgets/checkoutfunctions.dart';

import 'package:miniapp/screens/navbar/bottomnavigation.dart';
import 'package:miniapp/widgets/constant/colors.dart';


class CartScreenData extends StatefulWidget {

  const CartScreenData({super.key});

  @override
  State<CartScreenData> createState() => _CartScreenDataState();
}

class _CartScreenDataState extends State<CartScreenData> {
  num deliveryCharges =2.0;
  void addedItems(){
    addtoCartitems =addtoCartitems;
  }
    
    bool listlength(){
      bool visibility;
        if (addtoCartitems.length >= 3) {
          visibility =true;
        } else {
          visibility =false;
        }

       return visibility; 
    }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(
        children: [
      IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
              ),
            ),
            Container(
              color: const Color(0xffFFC83A),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Image.asset("assets/images/cartbannerrs.png"),
            ),
            const CartitemsinList(),
              
               InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ShowMoreCartItems(),)),
                        child:  Visibility(
                          visible: listlength(),
                          child: const Text("Show More" ,style: TextStyle(color: MyColors.blueColor),))),
                      const SizedBox(height: 10,),
          const CheckoutFunction(buttonText: "Proceed to checkout")
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar( pageindex: 3),
    );
    
  }
}