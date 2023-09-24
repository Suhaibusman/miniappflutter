import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniapp/Data/addtocartlist.dart';
import 'package:miniapp/models/categories_part.dart';



class CategoriesBar extends StatefulWidget {
  const CategoriesBar({super.key});

  @override
  State<CategoriesBar> createState() => _CategoriesBarState();
}

class _CategoriesBarState extends State<CategoriesBar> {
  List<Categorypart> category = [];
  void _getCategories() {
    setState(() {
      category = Categorypart.getCategorypart();
    });
  }
  void addtoCart(int index) {
  // Check if the item already exists in the addtoCartitems list.
  bool itemExists = addtoCartitems.any((item) =>
      item.name == category[index].simplegetText &&
      item.price == category[index].categoryPrice);

  if (itemExists) {
    // Show a dialog if the item is already in the cart.
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("${category[index].simplegetText} is Already in cart"),
                    content: const Text("Do You Want To Remove From Cart?"),
        actions: [ TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: const Text("No")),
        TextButton(onPressed: (){
          addtoCartitems.removeAt(index);
          Navigator.pop(context);
        }, child: const Text("Yes"))],
        );
      },
    );
  } else {
    // Add the item to the cart and update its `isInCart` property.
    addtoCartitems.add(
      AddedItems(
        price: category[index].categoryPrice,
        name: category[index].simplegetText,
        quantity: category[index].quantity,
        iconpath: category[index].iconpath,
      ),
    );
    category[index].isInCart = true;
  }
}

//   void addtoCart(int index){
//   if (category[index].isInCart ==true) {
//     showDialog(context: context, builder: (context) {
//       return AlertDialog(
//         title: Text("${category[index].simplegetText} is Already in cart"),
        // content: const Text("Do You Want To Update Quantity ?"),
        // actions: [ TextButton(onPressed: (){
        //   Navigator.pop(context);
        // }, child: const Text("No")),
        // TextButton(onPressed: (){
        //   addtoCartitems[index].quantity +=1;
        //   Navigator.pop(context);
        // }, child: const Text("Yes"))],
//       );
//     },);
//   } if (category[index].isInCart ==false) {
//     addtoCartitems.add(AddedItems(price: category[index].categoryPrice, name: category[index].simplegetText, quantity: category[index].quantity, iconpath: category[index].iconpath));
// category[index].isInCart =true;

//   }
// }

 
  @override
  Widget build(BuildContext context) {
    _getCategories();
    return SizedBox(
      height: 194,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Color(0xffE0E2EE),
              ),
              width: 130,
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 mainAxisSize: MainAxisSize.min,
                children: [
                    IconButton(onPressed: (){
                                         setState(() {
                                          if (category[index].isFav==true) {
                                            category[index].isFav=false;
                                          } else {
                                            category[index].isFav=true;
                                          }
                                        });
                                      }, icon:  Icon(Icons.favorite_rounded ,
                                      color: category[index].isFav==true ?const Color.fromARGB(255, 250, 0, 0) :Colors.grey,))
                                    ,
                  Center(
                    child: Image.asset(
                      category[index].iconpath,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  const Divider(
                    color: Color(0xffE0E2EE),
                  ),
                  Text(
                    category[index].simplegetText,
                    style: const TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    category[index].orderdetails,
                    style: const TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff616A7D),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 24,
                      width: 108,
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(12)),
                          color: Color(0xffFFFFFF)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          
                          const Text(
                            "Unit",
                            style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff616A7D),
                            ),
                          ),
                          Text(
                            category[index].categoryPrice,
                            style: const TextStyle(
                              fontFamily: "Manrope",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                           
                            addtoCart(index);
                             
                            },
                            child: Stack(
                              children: [
                                const CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Color(0xff2A4BA0),
                                ),
                                Positioned(
                                  left: 6, top: 6,
                                  child: SvgPicture.asset(
                                      "assets/images/plus-outline (3) 1.svg",fit: BoxFit.cover,),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: category.length),
    );
  }
}
