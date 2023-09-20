import 'package:flutter/material.dart';
class Categorypart{
  String simplegetText;
  String categoryPrice;
  String iconpath;
  String orderdetails;
  Color? boxColor;
  int  quantity;
Categorypart({
  required this.simplegetText,
  required this.categoryPrice,
  required this.orderdetails,
  required this.iconpath,
  required this.quantity,
   this.boxColor
});



static List<Categorypart> getCategorypart(){
  List<Categorypart> category=[];

  category.add(

    Categorypart(simplegetText: "Fresh Lemon", categoryPrice: "12\$", orderdetails: "Organic", iconpath: "assets/images/lemon.png",quantity: 1)
  );

   category.add(

    Categorypart(simplegetText: "Green Tea", categoryPrice: "06\$", orderdetails: "Organic", iconpath: "assets/images/greentea.png",quantity: 1)
  );

  category.add(

    Categorypart(simplegetText: "Fresh Fish", categoryPrice: "16\$", orderdetails: "Organic", iconpath: "assets/images/fish.png",quantity: 1)
  );
    
 return category;
}

}