import 'package:flutter/material.dart';
import 'package:miniapp/screens/favourite/model/favouriteitems.dart';

class FavouriteScreenData extends StatefulWidget {
  const FavouriteScreenData({super.key});

  @override
  State<FavouriteScreenData> createState() => _FavouriteScreenDataState();
}

class _FavouriteScreenDataState extends State<FavouriteScreenData> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    
      body: ListView.builder(
        itemCount: favoriteitems.length,
        itemBuilder: (context, index) {
        return const ListTile();
      },)
      
      //  bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}