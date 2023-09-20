import 'package:flutter/material.dart';
import 'package:miniapp/Data/addtocartlist.dart';

import 'package:miniapp/screens/home/widgets/bottomnavigation.dart';

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
    void increaseQuantity(int index) {
    setState(() {
      addtoCartitems[index].quantity += 1;
    });
  }

  void decreaseQuantity(int index) {
    
      if (addtoCartitems[index].quantity == 1) {
        showDialog(context: context, builder: (context) {
           Widget cancelButton = TextButton(
    child: const Text("Cancel"),
    onPressed:  () {
     
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    child: const Text("Continue"),
    onPressed:  () {
      setState(() {
          addtoCartitems.removeAt(index);
          Navigator.pop(context);
      });
    },
  );
          return  AlertDialog(title: const Text("Do You Want to remove"),
            actions: [
              cancelButton,
      continueButton,
            ],
          );
        },);

    
      } else {
        setState(() {
          addtoCartitems[index].quantity -= 1;
        });
      }
    
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
              height: MediaQuery.of(context).size.height * 0.35,
              child: Image.asset("assets/images/cartbannerrs.png"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: addtoCartitems.length,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Column(
                    children: [
                      ListTile(
                        leading:  CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.amber,
                           child: Image.asset(addtoCartitems[index].iconpath),
                        ),
                        title: Text(addtoCartitems[index].name ,style: const TextStyle(fontFamily: "Manrope" ,fontSize: 14 ,color: Color(0xff1E222B), fontWeight: FontWeight.bold),),
                        subtitle: Text(addtoCartitems[index].price ,style: const TextStyle(fontFamily: "Manrope" ,fontSize: 14 ,color: Color(0xff1E222B), fontWeight: FontWeight.w400),),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(onPressed: (){
                              decreaseQuantity(index);
                            }, child: Image.asset("assets/images/minus.png")),
                              Text(addtoCartitems[index].quantity.toString()),
                           TextButton(onPressed: (){
                            increaseQuantity(index);
                           }, child: Image.asset("assets/images/plus.png")),
                          ],
                        ),
                      ),
                      const Divider(color: Colors.black,)
                    ],
                  ),
                );
              },),
            
            ),
            Container(height: 256,
              decoration: const BoxDecoration(
                color: Color(0xffF8F9FB),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                )) ,
                child:  Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40 ,top: 20),
                  child: Column(
                    
                    children: [
                      const SizedBox(height: 10,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Subtotal"),
                          Text("\$35.96",style: TextStyle(fontFamily: "Manrope" ,fontSize: 14 ,color: Color(0xff1E222B), fontWeight: FontWeight.bold),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                         Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Delivery"),
                          Text(deliveryCharges.toString(),style: const TextStyle(fontFamily: "Manrope" ,fontSize: 14 ,color: Color(0xff1E222B), fontWeight: FontWeight.bold),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                         const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total"),
                          Text("\$35.96",style: TextStyle(fontFamily: "Manrope" ,fontSize: 14 ,color: Color(0xff1E222B), fontWeight: FontWeight.bold),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
                
                )
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar( pageindex: 3),
    );
    
  }
}