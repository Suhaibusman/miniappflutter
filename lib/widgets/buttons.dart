// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtonWidget extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed;

  final double buttonHeight;
  final double buttonWidth;
  final Color backgroundColor;
  final Color fontColor;
  Color borderColor;
  String? iconimage;
  // final IconData? icondata;
  CustomButtonWidget({
    Key? key,
    // this.icondata,
    required this.buttonText,
    required this.onPressed,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.backgroundColor,
    required this.fontColor,
    required this.borderColor,
    this.iconimage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: borderColor)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(buttonText ,style:  TextStyle(fontFamily: "Manrope", fontSize: 16,fontWeight: FontWeight.w600 ,color: fontColor),)),
             const Padding(
               padding: EdgeInsets.only(left: 20),
                // child: 
                
                // SvgPicture.asset(
                  
                //   iconimage! ,height: 20,width: 20,),
             )
          ],
        ),
      ),
    );
  }
}
