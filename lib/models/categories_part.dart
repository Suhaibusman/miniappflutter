import 'package:flutter/material.dart';
class Categorypart{
  String simplegetText;
  String categoryPrice;
  String iconpath;
  String orderdetails;
  Color? boxColor;

Categorypart({
  required this.simplegetText,
  required this.categoryPrice,
  required this.orderdetails,
  required this.iconpath,
   this.boxColor
});



static List<Categorypart> getCategorypart(){
  List<Categorypart> category=[];

  category.add(

    Categorypart(simplegetText: "Fresh Lemon", categoryPrice: "12\$", orderdetails: "Organic", iconpath: "assets/images/LemonLores.svg")
  );

   category.add(

    Categorypart(simplegetText: "Green Tea", categoryPrice: "06\$", orderdetails: "Organic", iconpath: "assets/images/Green_tea_sachet.svg")
  );

  category.add(

    Categorypart(simplegetText: "Fresh Fish", categoryPrice: "16\$", orderdetails: "Organic", iconpath: "assets/images/fish-line-art.svg")
  );
    
 return category;
}

}