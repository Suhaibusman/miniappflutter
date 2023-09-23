import 'package:flutter/material.dart';
import 'package:miniapp/Data/addtocartlist.dart';
import 'package:miniapp/screens/checkoutpage/addcarscreen.dart';
import 'package:miniapp/widgets/buttons.dart';
import 'package:miniapp/widgets/constant/colors.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Image.asset("assets/images/plus.png")) ,
              const Text("Shopping Cart"),
              Text(
                "(${addtoCartitems.length.toString()})")

            ],
          ),

          const Text("Delivery Address"),
          Container(

            child: const Column(
              children: [
                Row( 
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Home"),
                  Icon(Icons.check_circle ,color: MyColors.darkYellowColor,) ,

                ],),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                  Text("35 green way, Sunamganj"),
                  Text("Edit"),
                  
                ],)
              ],
            ),
          ),
            Container(

            child: const Column(
              children: [
                Row( 
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Office"),
                  // Icon(Icons.check_circle ,color: MyColors.darkYellowColor,) ,

                ],),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                  Text("Medical road, Halal lab, Sunamganj"),
                  Text("Edit"),
                  
                ],),
             
              ],
            ),
          ),
           CustomButtonWidget(buttonText: "Add New Address", onPressed: (){}, buttonHeight: 30, buttonWidth: 179, backgroundColor: Colors.transparent, fontColor: MyColors.blueColor, borderColor: Colors.transparent),
           CustomButtonWidget(buttonText: "Add Card", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AddCard(),));
           }, buttonHeight: 30, buttonWidth: 179, backgroundColor: MyColors.darkBlueColor, fontColor: MyColors.onBoardText2, borderColor: Colors.transparent),

        ],
      )
      
      ),
    );
  }
}