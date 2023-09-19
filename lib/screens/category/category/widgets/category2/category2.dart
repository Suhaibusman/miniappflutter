import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniapp/screens/category/category/models/categorydata.dart';

class CategoriesItemsScreen extends StatefulWidget {
  const CategoriesItemsScreen({super.key});

  @override
  State<CategoriesItemsScreen> createState() => _CategoriesItemsScreenState();
}

class _CategoriesItemsScreenState extends State<CategoriesItemsScreen> {
  void getCategoriesandsubCategoryitems(){
  setState(() {
      itemsdatanew =itemsdatanew;
  });
}
  int? value =1;
   List dataList = [
"Popular",
"Big Deals",
"Low Price"

];

  @override
  Widget build(BuildContext context) {
     getCategoriesandsubCategoryitems();
    return Scaffold(
      body: SafeArea(
        child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/images/Group 73.svg"
              ,height: 40 ,width: 40,
              ),
              const Text("Items" ,style: TextStyle(fontFamily: "Manrope" ,fontSize: 16,fontWeight: FontWeight.w400),),
              SvgPicture.asset("assets/images/Search Icon.svg" ,colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              // ,height: 18 ,width:  18,
              ),
              SvgPicture.asset("assets/images/Cart Icon.svg" ,height: 24 ,width: 24,),

           
            ],
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
                       return Container(
                                   height: 304,
                                   width: 304,
                                   decoration: const BoxDecoration(
                      color: Color(0xffE0E2EE),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                                 child:  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                   mainAxisSize: MainAxisSize.min,
                                   children: [
                         Image.asset(itemsdatanew[index]["image"][0], height: 68,width: 68,),
                   
                       
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
                         
                                 );
                     },),
                   )
                   
                   ]),
    ));
  }
}