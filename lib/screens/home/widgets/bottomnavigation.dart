import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:miniapp/screens/category/category/category.dart';
import 'package:miniapp/screens/favourite/favouritescreen.dart';
import 'package:miniapp/screens/home/homescreen.dart';
import 'package:miniapp/screens/more/morescreen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();

}
class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentindex = 0;
  
  final  List<Widget>  items = [
    const Icon(Icons.add, size: 30),
    const Icon(Icons.category, size: 30),
    const Icon(Icons.favorite, size: 30),
    const Icon(Icons.more_vert, size: 30),
  ];

  final List<Widget> bottomBarPages = [
    const HomeScreen(),
    const CategoryScreenData(),
    const FavouriteScreenData(),
    const MoreScreenData(),
  ];



  @override
  Widget build(BuildContext context) {
    return 
    CurvedNavigationBar(
        backgroundColor: const Color(0xffF8F7FB),
        buttonBackgroundColor: Colors.amber,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        items: items,
        height: 70,
        index: currentindex,
        // onTap: (selectedIndex) {
        //   setState(() {
        //     index = selectedIndex;
        //   });
        // },
         onTap: (index) {
          setState(() {
     currentindex =index;
             if(index ==0){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
              currentindex =index;
             }else  if(index ==1){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoryScreenData(),));
             currentindex =index;
             }
          });
        },
 letIndexChange: (index) => true,
      );
     
    
  }
}