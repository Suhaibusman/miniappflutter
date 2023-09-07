import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryData extends StatefulWidget {
  const CategoryData({super.key});

  @override
  State<CategoryData> createState() => _CategoryDataState();
}

class _CategoryDataState extends State<CategoryData> {
    List<Map<String, dynamic>> categoryData = [
  {
    
  }

];
void getCategoriesandsubCategoryitems(){
  setState(() {
      categoryData =categoryData;
  });
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
                  // print(categoryData[0]["category"]["categoryName"]);
                },
              child: Container(
                height: 164,
                width: 154,
                decoration: const BoxDecoration(
                    color: Color(0xffE0E2EE),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/Image Icon.svg", height: 68, width: 68, ),
                  const Divider(
                    color: Color.fromARGB(255, 0, 0, 0), //color of divider
                height: 5, //height spacing of divider
                thickness: 1, //thickness of divier line
                indent: 25, //spacing at the start of divider
                endIndent: 25, //spacing at the end of divider
                  ),
                  const Text("data", style: TextStyle(fontFamily: "Manrope" ,
                  fontSize: 13 ,fontWeight: FontWeight.w600 ,color: Colors.black),),
               const Text("data", style: TextStyle(fontFamily: "Manrope" ,
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
