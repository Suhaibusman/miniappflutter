import 'package:flutter/material.dart';
import 'package:miniapp/screens/home/widgets/bottomnavigation.dart';

class MoreScreenData extends StatefulWidget {
  const MoreScreenData({super.key});

  @override
  State<MoreScreenData> createState() => _MoreScreenDataState();
}

class _MoreScreenDataState extends State<MoreScreenData> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: SafeArea(child: Column(children: [],)),
     bottomNavigationBar:  NavBar(),
    );
  }
}