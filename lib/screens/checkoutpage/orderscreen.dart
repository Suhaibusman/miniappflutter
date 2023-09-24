import 'package:flutter/material.dart';
import 'package:miniapp/Data/addtocartlist.dart';
import 'package:miniapp/screens/checkoutpage/trackorderscreen.dart';
import 'package:miniapp/widgets/buttons.dart';
import 'package:miniapp/widgets/constant/colors.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
    
        body: Column(
          children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset("assets/images/back.png")) ,
                  const Text("Order" ,style: TextStyle(fontFamily: "Manrope" ,fontSize: 16 ,fontWeight: FontWeight.w400),),
                  
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: addtoCartitems.length,
                  itemBuilder: (context, index) {
                  return  ExpansionTile(
                  title: Text(addtoCartitems[index].name ,style: const TextStyle(fontFamily: "Manrope" ,fontSize: 14 ,color: Color(0xff1E222B), fontWeight: FontWeight.bold),),
                        subtitle: Text(addtoCartitems[index].price.toString() ,style: const TextStyle(fontFamily: "Manrope" ,fontSize: 14 ,color: Color(0xff1E222B), fontWeight: FontWeight.w400),),
                    children: [
                      Center(
                        child: Row(
                          children: [
                            Image.asset("assets/images/delivery.png",height: 123,width: 175,),
                            Container(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Text("Your ${addtoCartitems[index].name}",style: const TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Manrope",
                                    fontWeight: FontWeight.w400),),
                                  const Text("are on the way",style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Manrope",
                                    fontWeight: FontWeight.bold),),
                                      CustomButtonWidget(buttonText: "Track Order", onPressed: (){
                                        setState(() {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const TrackOrder(),));
                                        });
                                      }, buttonHeight: 56, buttonWidth: 120, backgroundColor: MyColors.darkBlueColor, fontColor: Colors.white, borderColor: Colors.transparent)
                                    
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],

                  );
                },),
              )
          ],
        ),
        
      ),
    );
  }
}