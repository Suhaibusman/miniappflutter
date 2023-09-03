import 'package:flutter/material.dart';

class OnBoardText extends StatelessWidget {
  final String textData;

 
  const OnBoardText({super.key, required this.textData});

  @override
  Widget build(BuildContext context) {
    return Text(textData, style: const TextStyle(
      color: Color(0xffFAFBFD),
      fontFamily: "Manrope" ,
      fontSize: 30,
      fontWeight: FontWeight.bold
    ),);
  }
}