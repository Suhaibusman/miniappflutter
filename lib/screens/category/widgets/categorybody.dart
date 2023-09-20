import 'package:flutter/material.dart';
import 'package:miniapp/Data/addtocartlist.dart';
import 'package:miniapp/screens/category/models/category_items.dart';


import 'category2/category2.dart';

class CategoryData extends StatefulWidget {
  const CategoryData({super.key});

  @override
  State<CategoryData> createState() => _CategoryDataState();
}

class _CategoryDataState extends State<CategoryData> {

void getCategoriesandsubCategoryitems(){
  setState(() {
      categoryData =categoryData;
  });
}

void navigatetoNextPage(int index){
  Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoriesItemsScreen(),));
}
void addtoCart(int index){
  addtoCartitems.add(AddedItems(price: categoryData[index]["price"], name: categoryData[index]["name"], quantity: categoryData[index]["quantity"], iconpath: categoryData[index]["image"]));
}

  @override
  Widget build(BuildContext context) {
    getCategoriesandsubCategoryitems();
    return Expanded(
      child: GridView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: categoryData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 20),
            child: InkWell(
                onTap: () { 
                  navigatetoNextPage(index);
                },
                
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
                       Image.asset(categoryData[index]["image"], height: 68,width: 68,),

                     
                  const Divider(
                    color: Color.fromARGB(255, 0, 0, 0), //color of divider
                height: 5, //height spacing of divider
                thickness: 1, //thickness of divier line
                indent: 25, //spacing at the start of divider
                endIndent: 25, //spacing at the end of divider
                  ),
                    Text(categoryData[index]["category"], style: const TextStyle(fontFamily: "Manrope" ,
                   fontSize: 13 ,fontWeight: FontWeight.w600 ,color: Colors.black),),
              
                Text(categoryData[index]["details"], style: const TextStyle(fontFamily: "Manrope" ,
                  fontSize: 12 ,fontWeight: FontWeight.w400 ,color: Color(0xff616A7D)),)
              
                ],
                
              ),
                       
              ),
            ),
          );
        },
      ),
    );
  }
}
