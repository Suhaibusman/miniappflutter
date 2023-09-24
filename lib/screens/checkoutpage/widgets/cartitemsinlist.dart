import 'package:flutter/material.dart';
import 'package:miniapp/Data/addtocartlist.dart';

class CartitemsinList extends StatefulWidget {
  const CartitemsinList({super.key});

  @override
  State<CartitemsinList> createState() => _CartitemsinListState();
}

class _CartitemsinListState extends State<CartitemsinList> {
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
    return Expanded(
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
            
            );
  }
}