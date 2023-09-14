import 'package:flutter/material.dart';

class MoreScreenData extends StatefulWidget {
  const MoreScreenData({super.key});

  @override
  State<MoreScreenData> createState() => _MoreScreenDataState();
}

class _MoreScreenDataState extends State<MoreScreenData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        color: const Color.fromARGB(255, 255, 72, 0),
        height: double.infinity,
        width: double.infinity,
        child: const Center(
         child: Text("More")
        ),
      )),
      //  bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}