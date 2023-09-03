

import 'package:flutter/material.dart';

class CustomButtonWidget extends StatefulWidget {
  final String buttonText;
  final void Function() onPressed;

  final double buttonHeight;
  final double buttonWidth;
  final Color backgroundColor;
  final Color fontColor;
  final IconData? icondata;
  const CustomButtonWidget(
      {super.key, required this.buttonText, required this.onPressed, required this.buttonHeight, required this.buttonWidth, required this.backgroundColor, required this.fontColor, this.icondata,});

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
     style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: widget.backgroundColor,
minimumSize:  Size(widget.buttonWidth, widget.buttonHeight),
shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
      child: Wrap(
        children: [
          Text(widget.buttonText ,style:  TextStyle(fontFamily: "OpenSans", fontSize: 16,fontWeight: FontWeight.bold ,color: widget.fontColor),),
           Icon(widget.icondata!, color: Colors.black,)
        ],
      ),
    );
  }
}
