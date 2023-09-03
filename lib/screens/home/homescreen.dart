import 'package:flutter/material.dart';
import 'package:miniapp/screens/home/widgets/bottomnavigation.dart';
import 'package:miniapp/screens/home/widgets/categories.dart';
import 'package:miniapp/screens/home/widgets/discountbar.dart';
import 'package:miniapp/screens/home/widgets/grocerytop.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            HomeTopData(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DiscountBar(),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Recommended",
                        style: TextStyle(fontFamily: "Manrope", fontSize: 30),
                      ),
                    ),
                    CategoriesBar(),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Deals on Fruits & Tea",
                        style: TextStyle(fontFamily: "Manrope", fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )),
        bottomNavigationBar: CustomBottomNavigationBar());
  }
}
