import 'package:flutter/material.dart';
import 'package:miniapp/screens/home/widgets/bottomnavigation.dart';

class FavouriteScreenData extends StatefulWidget {
  const FavouriteScreenData({super.key});

  @override
  State<FavouriteScreenData> createState() => _FavouriteScreenDataState();
}

class _FavouriteScreenDataState extends State<FavouriteScreenData> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Column(
        children: [Container(
          color: Colors.amber,
        )],
      )),
      bottomNavigationBar: const NavBar(),
    );
  }
}