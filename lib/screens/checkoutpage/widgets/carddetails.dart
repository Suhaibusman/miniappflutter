import 'package:flutter/material.dart';
import 'package:miniapp/Data/addtocartlist.dart';
import 'package:miniapp/screens/checkoutpage/orderscreen.dart';
import 'package:miniapp/widgets/buttons.dart';
import 'package:miniapp/widgets/constant/colors.dart';

class CardFunc extends StatefulWidget {
 
   const CardFunc({
 
    super.key});

  @override
  State<CardFunc> createState() => _CardFuncState();
}

class _CardFuncState extends State<CardFunc> {
   num deliveryCharges =2.0;
  double calculateSubtotal() {
    
  double subtotal = 0.0;
  for (var item in addtoCartitems) {
    subtotal += item.price * item.quantity;
  }
  return subtotal;
}
double calculateTotal() {
 double total = 0.0;
 total =calculateSubtotal() +deliveryCharges;
  return total;
}
  @override
  Widget build(BuildContext context) {
    return  Container(
              decoration: const BoxDecoration(
                color: Color(0xffF8F9FB),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                )) ,
                child:  Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40 ,top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Subtotal"),
                          Text("\$${calculateSubtotal().toString()}",style: const TextStyle(fontFamily: "Manrope" ,fontSize: 14 ,color: Color(0xff1E222B), fontWeight: FontWeight.bold),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                         Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Delivery"),
                          Text("\$${deliveryCharges.toString()}",style: const TextStyle(fontFamily: "Manrope" ,fontSize: 14 ,color: Color(0xff1E222B), fontWeight: FontWeight.bold),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                          Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Total"),
                          Text("\$${calculateTotal().toString()}",style: const TextStyle(fontFamily: "Manrope" ,fontSize: 14 ,color: Color(0xff1E222B), fontWeight: FontWeight.bold),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      CustomButtonWidget(buttonText: "Make Payment", onPressed: (){
                        
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderScreen(),),);}, buttonHeight: 56, buttonWidth: 327, backgroundColor: MyColors.blueColor, fontColor: MyColors.onBoardText1, borderColor: MyColors.blueColor)
                      ,const SizedBox(height: 10,),
                      
                    ],
                  ),
                ),
                
                );
  }
}