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
      Padding(
        padding: const EdgeInsets.only(left: 20 ,right: 20),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 80,),
            const Text("Delivery Address",style: TextStyle(fontFamily: "Manrope" ,fontSize: 16 ,fontWeight: FontWeight.w400),),
             const SizedBox(height: 40,),
             Container(
              height: 120,
              width: 327,
              decoration:  BoxDecoration(
               borderRadius: const BorderRadius.all(Radius.circular(20)),
               border: Border.all(
                    color: MyColors.darkYellowColor,
                    width: 4,
                  )
              ),
              child:  Padding(
                padding: const EdgeInsets.only(left: 20 ,right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    const Row( 
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Home"),
                       Icon(Icons.check_circle ,color: MyColors.darkYellowColor,) ,
                    
                    ],),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                      Container(
                        height: 50,
                        width: 201,
                        color: Colors.transparent,
                        child: const Text("36 green way, Sunamganj",style: TextStyle(
                          
                          fontFamily: "Manrope" ,fontSize: 16 ,fontWeight: FontWeight.bold),),
                      ),
                      const Text("Edit",style: TextStyle(color: MyColors.blueColor),),
                      
                    ],)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              height: 120,
              width: 327,
              decoration:  BoxDecoration(
               borderRadius: const BorderRadius.all(Radius.circular(20)),
               border: Border.all(
                    color: MyColors.darkYellowColor,
                    width: 4,
                  )
              ),
              child:  Padding(
                padding: const EdgeInsets.only(left: 20 ,right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    const Row( 
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Home"),
                      // Icon(Icons.check_circle ,color: MyColors.darkYellowColor,) ,
                    
                    ],),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                      Container(
                        height: 50,
                        width: 201,
                        color: Colors.transparent,
                        child: const Text("Medical road, Halal lab, Sunamganj",style: TextStyle(
                          
                          fontFamily: "Manrope" ,fontSize: 16 ,fontWeight: FontWeight.bold),),
                      ),
                      const Text("Edit",style: TextStyle(color: MyColors.blueColor),),
                      
                    ],)
                  ],
                ),
              ),
            ),
                  const SizedBox(height: 30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Image.asset("assets/images/yellowadd.png"),
                
                 CustomButtonWidget(buttonText: "Add New Address", onPressed: (){}, buttonHeight: 30, buttonWidth: 179, backgroundColor: Colors.transparent, fontColor: MyColors.blueColor, borderColor: Colors.transparent),
               ],
             ),
                  const SizedBox(height: 40,),
             CustomButtonWidget(buttonText: "Add Card", onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddCard(),));
             }, buttonHeight: 56, buttonWidth: 327, backgroundColor: MyColors.darkBlueColor, fontColor: const Color(0xffFFFFFF), borderColor: Colors.transparent),
           const SizedBox(height: 20,),
          ],
        ),
      )
      
      ),
    );
  }
}