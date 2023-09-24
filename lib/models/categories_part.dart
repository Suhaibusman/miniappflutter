import 'package:flutter/material.dart';
class Categorypart{
  String simplegetText;
  String categoryPrice;
  String iconpath;
  String orderdetails;
  Color? boxColor;
  int  quantity;
  bool isFav;
  bool isInCart;
Categorypart({
  required this.simplegetText,
  required this.categoryPrice,
  required this.orderdetails,
  required this.iconpath,
  required this.quantity,
   this.boxColor,
   required this.isFav,
    required this.isInCart,
});



static List<Categorypart> getCategorypart(){
  List<Categorypart> category=[];

  category.add(

    Categorypart(simplegetText: "Fresh Lemon", categoryPrice: "12\$", orderdetails: "Organic", iconpath: "assets/images/lemon.png",quantity: 1, isFav: false ,isInCart: false)
  );

   category.add(

    Categorypart(simplegetText: "Green Tea", categoryPrice: "06\$", orderdetails: "Organic", iconpath: "assets/images/greentea.png",quantity: 1, isFav: false,isInCart: false)
  );

  category.add(

    Categorypart(simplegetText: "Fresh Fish", categoryPrice: "16\$", orderdetails: "Organic", iconpath: "assets/images/fish.png",quantity: 1, isFav: false,isInCart: false)
  );
    
 return category;
}

}