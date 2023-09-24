import 'package:flutter/material.dart';
import 'package:miniapp/Data/addtocartlist.dart';
import 'package:miniapp/screens/checkoutpage/widgets/cartitemsinlist.dart';
import 'package:miniapp/screens/checkoutpage/widgets/checkoutfunctions.dart';

class ShowMoreCartItems extends StatefulWidget {
  const ShowMoreCartItems({super.key});

  @override
  State<ShowMoreCartItems> createState() => _ShowMoreCartItemsState();
}

class _ShowMoreCartItemsState extends State<ShowMoreCartItems> {
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
                child: Image.asset("assets/images/back.png")) ,
              const Text("Shopping Cart" ,style: TextStyle(fontFamily: "Manrope" ,fontSize: 16 ,fontWeight: FontWeight.w400),),
              Text(
                "(${addtoCartitems.length.toString()})" ,style: const TextStyle(fontFamily: "Manrope" ,fontSize: 16 ,fontWeight: FontWeight.w400))

            ],
          ),
          const CartitemsinList(),
          const CheckoutFunction()
          
        ],
      )
      
      ),
    );
  }
}