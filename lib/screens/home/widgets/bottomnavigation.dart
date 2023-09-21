import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:miniapp/screens/checkoutpage/cartscreen.dart';
import 'package:miniapp/screens/favourite/favouritescreen.dart';
import 'package:miniapp/screens/home/homescreen.dart';


import '../../category/category.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int pageindex;
  const CustomBottomNavigationBar({super.key, required this.pageindex,  });

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
    const CartScreenData(),
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
          onTap: (selectedindex) {
  setState(() {
    currentindex = selectedindex;
  });

  if (selectedindex == 0) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  } else if (selectedindex == 1) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoryScreenData()));
  } else if (selectedindex == 2) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const FavouriteScreenData()));
  } else if (selectedindex == 3) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreenData()));
  }
},
        // onTap: (selectedIndex) {
        //   setState(() {
        //     selectedIndex = currentindex;
        //   });
        // },
      //    onTap: (selectedindex) {
      //     setState(() {
      // currentindex =selectedindex;
      //        if(selectedindex ==0){
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
      //         // currentindex =index;
      //         setState(() {
      //           currentindex =0;
      //           selectedindex =currentindex;
      //         });
              
      //        }else  if(selectedindex ==1){
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoryScreenData(),));
      //       //  currentindex =index;

      //       // currentindex =1;
      //         setState(() {
      //           currentindex =1;
      //           selectedindex =currentindex;
      //         });
      //      } else  if(selectedindex ==2){
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => const FavouriteScreenData(),));
      //       //  currentselectedindex =selectedindex;
      //       currentindex =2;
      //        }else  if(selectedindex ==3){
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreenData(),));
      //       //  currentindex =index;
      //       // currentindex =3;
      //         setState(() {
      //           currentindex =3;
      //           currentindex =selectedindex;
      //         });
      //        }
      //     });
      //   },
//  letIndexChange: (pageindex) => true,
      );
     
    
  }
}