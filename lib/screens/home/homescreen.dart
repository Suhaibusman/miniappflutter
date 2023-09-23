import 'package:flutter/material.dart';
import 'package:miniapp/screens/navbar/bottomnavigation.dart';
import 'package:miniapp/screens/home/widgets/categories.dart';
import 'package:miniapp/screens/home/widgets/dealscategogeries.dart';
import 'package:miniapp/screens/home/widgets/discountbar.dart';
import 'package:miniapp/screens/home/widgets/grocerytop.dart';
import 'package:miniapp/screens/home/widgets/savedtimebar.dart';

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
                child: Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DiscountBar(),
                      Text(
                        "Recommended",
                        style: TextStyle(fontFamily: "Manrope", fontSize: 30),
                      ),
                      CategoriesBar(),
                      SavedTimeBar(),
                      Text(
                        "Deals on Fruits & Tea",
                        style: TextStyle(fontFamily: "Manrope", fontSize: 30),
                      ),
                      DealsOnFruit(),
                    ],
                  ),
                ),
              ),
            ),
                // NavBar()
                    
                    ],
                  )),
                bottomNavigationBar: CustomBottomNavigationBar(pageindex: 0,)
        );
  }
}
