import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:miniapp/screens/checkoutpage/cartscreen.dart';
import 'package:miniapp/screens/favourite/favouritescreen.dart';
import 'package:miniapp/screens/home/homescreen.dart';


import '../category/category.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int pageindex;
  const CustomBottomNavigationBar({super.key, required this.pageindex,  });

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();

}
class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentindex = 0;
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
  
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
    const CartScreenData(),
  ];



  @override
  Widget build(BuildContext context) {
    return 
    CurvedNavigationBar(
      key: bottomNavigationKey,
        backgroundColor: const Color(0xffF8F7FB),
        buttonBackgroundColor: Colors.amber,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        items: items,
        height: 70,
          index: currentindex,
          onTap: (selectedindex) {

              setState(() {
              currentindex = selectedindex;
            });
  if (selectedindex == 0) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      setState(() {
    currentindex = selectedindex;
  });
  } else if (selectedindex == 1) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CategoryScreenData()));
      setState(() {
    currentindex = selectedindex;
  });
  } else if (selectedindex == 2) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FavouriteScreenData()));
      setState(() {
    currentindex = selectedindex;
  });
  } else if (selectedindex == 3) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CartScreenData()));
      setState(() {
    currentindex = selectedindex;
  });
  }
},
      );
     
    
  }
}