import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniapp/Data/addtocartlist.dart';
import 'package:miniapp/Data/favouriteitems.dart';
import 'package:miniapp/Data/products_data.dart';

import 'package:miniapp/screens/category/category2/catitems.dart';
import 'package:miniapp/screens/category/models/categorydata.dart';
import 'package:miniapp/screens/checkoutpage/cartscreen.dart';
import 'package:miniapp/widgets/constant/colors.dart';

class CategoriesItemsScreen extends StatefulWidget {
  const CategoriesItemsScreen({super.key});

  @override
  State<CategoriesItemsScreen> createState() => _CategoriesItemsScreenState();
}

class _CategoriesItemsScreenState extends State<CategoriesItemsScreen> {
   List dataList = [
"Popular",
"Big Deals",
"Low Price"

];

  int? value =1;

  void getCategoriesandsubCategoryitems(){
  setState(() {
      itemsdatanew =itemsdatanew;
  });
}
void navigatetoitemdetails(int index){

Navigator.push(context, MaterialPageRoute(builder: (context) =>

  ItemsDetailsPage( itemdeatils: Itemsdatanew(itemname: itemsdatanew[index]["name"], categoryDetails: itemsdatanew[index]["details"], itemprice: itemsdatanew[index]["price"], itemimages: itemsdatanew[index]["image"], reviews: itemsdatanew[index]["reviews"], isFav: itemsdatanew[index]["isFav"] , quantity: itemsdatanew[index]["quantity"])),
 
),);
}
  void addtoCartitemss(int index){
    bool itemExsist =false;
for (var i = 0; i < cartItems.length; i++) {
  if (cartItems[i]["name"]==itemsdatanew[index]["name"]) {
      itemExsist=true;
      
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text("${itemsdatanew[index]["name"]} is Already in Cart, Do U Want To Update Quantity" ),

      );
    

    },
    
    
    );
  } if(!itemExsist) {
    addtoCartitems.add(AddedItems(price: itemsdatanew[index]["price"], name: itemsdatanew[index]["name"], quantity: itemsdatanew[index]["quantity"], iconpath: itemsdatanew[index]["image"][2]));
  }
}

  
}
  
void addtoFavourite(int index){
  favitemslist.add(FavouriteitemsList(price: itemsdatanew[index]["price"], name: itemsdatanew[index]["name"], iconpath: itemsdatanew[index]["image"][2]));
    
                                         
}

  @override
  Widget build(BuildContext context) {
     getCategoriesandsubCategoryitems();
    return Scaffold(
      body: SafeArea(
        child: Column(
          
        children: [
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left :20 ,right: 20 ,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset("assets/images/Group 73.svg"
                  ,height: 40 ,width: 40,
                  ),
                ),
                const Text("Items" ,style: TextStyle(fontFamily: "Manrope" ,fontSize: 16,fontWeight: FontWeight.w400),),
                SvgPicture.asset("assets/images/Search Icon.svg" ,colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                // ,height: 18 ,width:  18,
                ),
                InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreenData(),)),
                    child: Stack(
                      children:[ SvgPicture.asset(
                        "assets/images/carticonblack.svg",
                        height: 24,
                        width: 24,
                        fit: BoxFit.cover,
                      ),
                       Positioned(
                       
                       left: 7,
                       right: 2, 
                       bottom: 7,
                        child: CircleAvatar(radius: 9, backgroundColor: MyColors.darkYellowColor,
                        child: Positioned(
                        
                          child: Text(
                            
                           addtoCartitems.length.toString() ,style: const TextStyle(color: Colors.white, fontFamily: "Manrope",fontSize: 12,fontWeight: FontWeight.w600 ),)),
                        ),
                        )
                      ]
                    ),
                  )
          
             
              ],
            ),
          ),
                   SizedBox(
                    height: 30,
                     child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                         itemCount: dataList.length,
                         itemBuilder: (BuildContext context, int index) {
                           return ChoiceChip(
                             label: Text(dataList[index]),
                             selected: value == index,
                             selectedColor: Colors.amber,
                             selectedShadowColor: Colors.red,
                             onSelected: (bool keyvalue) {
                               setState(() {
                                 value = keyvalue ? index : null;
                               });
                             },
                             backgroundColor: Colors.blue,
                             labelStyle: const TextStyle(color: Colors.white),
                           );
                         },
                           
                           
                         ),


                   ),
                   Expanded(
                     child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
                     itemCount: itemsdatanew.length,
                     itemBuilder: (context, index) {
                       return Padding(
                         padding: const EdgeInsets.all(20),
                         child: InkWell(
                          onTap: () => navigatetoitemdetails(index),
                           child: Container(
                                       height: 304,
                                       width: 304,
                                       decoration: const BoxDecoration(
                                               color: Color(0xffE0E2EE),
                                               borderRadius: BorderRadius.all(Radius.circular(12))),
                                     child:  Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                       mainAxisSize: MainAxisSize.min,
                                       children: [
                             Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Image.asset(itemsdatanew[index]["image"][2], height: 68,width: 68,),
                                 Column(
                                   children: [
                                      IconButton(onPressed: (){
                                        setState(() {
                                          if (itemsdatanew[index]["isFav"]==true) {
                                            itemsdatanew[index]["isFav"]=false;
                                            favitemslist.removeAt(index);
                                          } else {
                                            itemsdatanew[index]["isFav"]=true;
                                            addtoFavourite(index);
                                          }
                                        });

                                          
                                      }, icon:  Icon(Icons.favorite_rounded ,
                                      color: itemsdatanew[index]["isFav"]==true ?const Color.fromARGB(255, 250, 0, 0) :Colors.grey,))
                                    , InkWell(
                                      onTap: () {
                                       addtoCartitemss(index);
                                      },
                                      child: SvgPicture.asset("assets/images/add.svg")),
                                   ],
                                 )
                               ],
                             ),
                                            
                           
                                         const Divider(
                                               color: Color.fromARGB(255, 0, 0, 0), //color of divider
                                       height: 5, //height spacing of divider
                                       thickness: 1, //thickness of divier line
                                       indent: 25, //spacing at the start of divider
                                       endIndent: 25, //spacing at the end of divider
                                         ),
                                               Text(itemsdatanew[index]["name"], style: const TextStyle(fontFamily: "Manrope" ,
                                              fontSize: 13 ,fontWeight: FontWeight.w600 ,color: Colors.black),),
                                     
                                       Text(itemsdatanew[index]["price"], style: const TextStyle(fontFamily: "Manrope" ,
                                         fontSize: 12 ,fontWeight: FontWeight.w400 ,color: Color(0xff616A7D)),)
                                     
                                       ],
                                       
                                     ),
                             
                                     ),
                         ),
                       );
                     },),
                   )
                   
                   ]),
    ));
  }
}