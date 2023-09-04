
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:miniapp/screens/home/category.dart';
import 'package:miniapp/screens/home/favouritescreen.dart';
import 'package:miniapp/screens/home/homescreen.dart';
import 'package:miniapp/screens/home/morescreen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});
  
 
         
  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();

}
//  int index =0;
class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
    final items= const <Widget>  [
            Icon(Icons.add, size: 30 ),
            Icon(Icons.category, size: 30),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.more_vert, size: 30),
          
          ];
          int index =0;

      final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
 
  
   @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// widget list
  final List<Widget> bottomBarPages = [
    const HomeScreen(),
    const CategoryScreenData(),
    const FavouriteScreenData(),
    const MoreScreenData(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: CurvedNavigationBar(
            
            backgroundColor: const Color(0xffF8F7FB),
            buttonBackgroundColor: Colors.amber,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 300),
            items: items,
            height: 70,
            
            index: index,
             onTap: (selectedIndex) {
              setState(() {
                index =selectedIndex;
              });
            },
            
            // letIndexChange: (index) => true,
           ),
      body: Container(

        child: getSelectedWidget(index: index),
      ), 
      
    
           
    );
          

  }
  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch (index) {
      case 0:
        widget = const HomeScreen();
        break;
      case 1:
        widget = const  CategoryScreenData();
  
        break;  

      case 2:
        widget = const  FavouriteScreenData();
  
        break;  
        case 3:
        widget = const  MoreScreenData();
  
        break;
      default:
      widget = const HomeScreen();
    }
    return widget;
  }
}