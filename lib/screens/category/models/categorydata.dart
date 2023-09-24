class Itemsdatanew{
  String itemname;
  
  String itemprice;
  String categoryDetails;
  
  List  itemimages;
  String    reviews;
  int quantity;
  bool isFav;   

Itemsdatanew({
  required this.itemname,
  
  required this.categoryDetails,
  required this.itemprice,
  
  required  this.itemimages,
   required this.reviews,
    required this.quantity,
   required this.isFav
});
// String get _itemname =>itemname;
// String get _itemprice =>itemprice;
// List get _itemiamges =>itemimages;
// String get _reviews =>reviews;
// bool get _isFav =>isFav;
}

 List<Map<String, dynamic>> itemsdatanew = [

  
   {
             
              
              "price" : "\$9",
              "name": "Burger Tonight" ,
              "quantity":1,
              "image":  [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/burger.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "isFav": false,
              "details":"Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo."
             , "reviews":"110" 
             ,"isInCart" :false
             } ,
                 {
             
              "reviews":"110",
              "price" : "\$3",
              "name": "Mighty burger" ,
               "quantity":1,
               
              "image":  [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/burger.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
               "isFav": false,
               "details":"Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo."
               ,"isInCart" :false
              } ,
                 {
             "reviews":"110",
               "quantity":1,
              "price" : "\$5",
              "name": "Subway Burger" ,
              "image":  [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/burger.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "isFav": false,
              "details":"Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo."
               ,"isInCart" :false
              } ,
                 {
              "quantity":1,
              "reviews":"110",
              "price" : "\$8",
              "name": "KFC Burger" ,
              "image":  [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/burger.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "isFav": false,
              "details":"Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo."
                 ,"isInCart" :false

              } ,


 ];