import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});
  
 
         
  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();

}
 int index =0;
class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
    final items= const <Widget>  [
            Icon(Icons.add, size: 30 ),
            Icon(Icons.category, size: 30),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.more_vert, size: 30),
          
          ];
          int index =0;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
          
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.amber,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          items: items,
          height: 60,
          index: index,
          onTap: (index) => setState(() =>
           this.index =index    ),
         );
  }
}