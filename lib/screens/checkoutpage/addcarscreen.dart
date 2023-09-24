import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
             Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Image.asset("assets/images/back.png")) ,
                const Text("Add Card" ,style: TextStyle( fontFamily: "Manrope" ,fontSize: 16 ,fontWeight: FontWeight.w400),),
               
      
              ],
            ),
        ],
      ),
    );
  }
}