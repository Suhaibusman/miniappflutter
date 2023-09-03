import 'package:flutter/material.dart';

class Discountpart{
  String simplegetText;
  String discountpercent;
  String iconpath;
  String orderquantity;
  Color boxColor;

Discountpart({
  required this.simplegetText,
  required this.discountpercent,
  required this.orderquantity,
  required this.iconpath,
  required this.boxColor
});



static List<Discountpart> getDiscount(){
  List<Discountpart> discount=[];

    discount.add(

      Discountpart(simplegetText: "Get", discountpercent: "50% OFF", orderquantity: "On first 03 Order", iconpath: "assets/images/Image Icon.svg", boxColor: const Color(0xffF9B023))
    );

  discount.add(

      Discountpart(simplegetText: "Get", discountpercent: "70% OFF", orderquantity: "On first 05 Order", iconpath: "assets/images/Image Icon.svg", boxColor: const Color.fromARGB(255, 9, 255, 173))
    );

 return discount;
}

}