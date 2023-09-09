// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:miniapp/screens/home/category/category.dart';
// import 'package:miniapp/screens/home/favouritescreen.dart';
// import 'package:miniapp/screens/home/homescreen.dart';
// import 'package:miniapp/screens/home/morescreen.dart';

// class CustomBottomNavigationBar extends StatefulWidget {
//   const CustomBottomNavigationBar({super.key});

//   @override
//   State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();

// }
// class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
//   int index = 0;

//   final  List<Widget>  items = [
//     const Icon(Icons.add, size: 30),
//     const Icon(Icons.category, size: 30),
//     const Icon(Icons.favorite, size: 30),
//     const Icon(Icons.more_vert, size: 30),
//   ];

//   final List<Widget> bottomBarPages = [
//     const HomeScreen(),
//     const CategoryScreenData(),
//     const FavouriteScreenData(),
//     const MoreScreenData(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: const Color(0xffF8F7FB),
//         buttonBackgroundColor: Colors.amber,
//         animationCurve: Curves.easeInOut,
//         animationDuration: const Duration(milliseconds: 300),
//         items: items,
//         height: 70,
//         index: index,
//         onTap: (selectedIndex) {
//           setState(() {
//             index = selectedIndex;
//           });
//         },
//       ),
//       body: bottomBarPages[index],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:miniapp/screens/home/category/category.dart';
import 'package:miniapp/screens/home/favouritescreen.dart';
import 'package:miniapp/screens/home/homescreen.dart';
import 'package:miniapp/screens/home/morescreen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: const Icon(Icons.home_filled)),
            label: "Home"),
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategoryScreenData(),
                  ),
                );
              },
              child: const Icon(Icons.list_outlined)),
          label: "Categories",
        ),
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FavouriteScreenData(),
                    ),
                  );
                },
                child: const Icon(Icons.favorite_border_outlined)),
            label: "Favourite"),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MoreScreenData(),
                  ),
                );
              },
              child: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ),
            label: "more"),
      ],
    );
  }
}
