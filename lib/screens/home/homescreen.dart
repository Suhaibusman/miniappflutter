import 'package:flutter/material.dart';
import 'package:miniapp/screens/home/widgets/bottomnavigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(child: Column(

        children: [],
      )),
      bottomNavigationBar: CustomBottomNavigationBar()
    );
  }
}