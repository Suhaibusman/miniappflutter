import 'package:flutter/material.dart';
import 'package:miniapp/Data/addtocartlist.dart';

import 'package:miniapp/screens/checkoutpage/widgets/checkoutfunctions.dart';

import 'package:miniapp/screens/navbar/bottomnavigation.dart';


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
            Expanded(
              child: ListView.builder(
                itemCount: addtoCartitems.length,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Column(
                    children: [
                      ListTile(
                        leading:  CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.amber,
                           child: Image.asset(addtoCartitems[index].iconpath),
                        ),
                        title: Text(addtoCartitems[index].name ,style: const TextStyle(fontFamily: "Manrope" ,fontSize: 14 ,color: Color(0xff1E222B), fontWeight: FontWeight.bold),),
                        subtitle: Text(addtoCartitems[index].price.toString() ,style: const TextStyle(fontFamily: "Manrope" ,fontSize: 14 ,color: Color(0xff1E222B), fontWeight: FontWeight.w400),),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(onPressed: (){
                              decreaseQuantity(index);
                            }, child: Image.asset("assets/images/minus.png")),
                              SizedBox(
                                width: 20,
                                child: Text(addtoCartitems[index].quantity.toString())),
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
          const CheckoutFunction()
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar( pageindex: 3),
    );
    
  }
}