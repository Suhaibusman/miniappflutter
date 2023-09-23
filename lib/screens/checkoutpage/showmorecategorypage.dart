import 'package:flutter/material.dart';
import 'package:miniapp/Data/addtocartlist.dart';

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
                child: Image.asset("assets/images/plus.png")) ,
              const Text("Shopping Cart"),
              Text(
                "(${addtoCartitems.length.toString()})")

            ],
          )
          
        ],
      )
      
      ),
    );
  }
}