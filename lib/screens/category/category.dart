import 'package:flutter/material.dart';
import 'package:miniapp/screens/category/widgets/categorybody.dart';
import 'package:miniapp/screens/category/widgets/categorytop.dart';


import 'package:miniapp/screens/home/widgets/bottomnavigation.dart';



class CategoryScreenData extends StatefulWidget {
  const CategoryScreenData({super.key});

  @override
  State<CategoryScreenData> createState() => _CategoryScreenDataState();
}

class _CategoryScreenDataState extends State<CategoryScreenData> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
          child: Column(children: [
            CategoryTopBar(),
            CategoryData(),
          ],),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(pageindex: 1,)
    );
  }
}