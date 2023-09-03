import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed;

  final double buttonHeight;
  final double buttonWidth;
  final Color backgroundColor;
  final Color fontColor;
  final String? iconimage;
  // final IconData? icondata;
  const CustomButtonWidget({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.backgroundColor,
    required this.fontColor, this.iconimage,
    // this.icondata,
  });

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
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(buttonText ,style:  TextStyle(fontFamily: "Manrope", fontSize: 16,fontWeight: FontWeight.w600 ,color: fontColor),)),
             Padding(
               padding: const EdgeInsets.only(left: 20),
               child: SvgPicture.asset(iconimage!),
             )
          ],
        ),
      ),
    );
  }
}
