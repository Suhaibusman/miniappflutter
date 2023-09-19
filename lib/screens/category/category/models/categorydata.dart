class Itemsdatanew{
  String itemname;
  
  String itemprice;
  String categoryDetails;
  
  String subcategoryName; 
  List  itemimages;
  String    reviews;
   String subcategoryprice;
  bool isFav;   

Itemsdatanew({
  required this.itemname,
  
  required this.categoryDetails,
  required this.itemprice,
   required this.subcategoryName,
  required  this.itemimages,
   required this.reviews,
   required this.subcategoryprice,
   required this.isFav
});


}

 List<Map<String, dynamic>> itemsdatanew = [
   {
             
              
              "price" : "\$9",
              "name": "Burger Tonight" ,
              "image":  [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
             
              } ,
                 {
             
              
              "price" : "\$3",
              "name": "Mighty burger" ,
              "image":  [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
             
              } ,
                 {
             
              
              "price" : "\$5",
              "name": "Subway Burger" ,
              "image":  [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
             
              } ,
                 {
             
              
              "price" : "\$8",
              "name": "KFC Burger" ,
              "image":  [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
             
              } ,


 ];