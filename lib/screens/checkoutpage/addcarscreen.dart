import 'package:flutter/material.dart';
import 'package:miniapp/screens/checkoutpage/widgets/checkoutfunctions.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
               Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset("assets/images/back.png")) ,
                  const Text("Add Card" ,style: TextStyle( fontFamily: "Manrope" ,fontSize: 16 ,fontWeight: FontWeight.w400),),
    
                ],
    
              ),
              const SizedBox(height: 60,),
              Container(
                color: Colors.white,
                height: 242,
                width: 335,
                child: Image.asset("assets/images/carddetails.png")),
              const CheckoutFunction(),

          ],
        ),
      ),
    );
  }
}