class Itemsdatanew{
  String categoryName;
  
  String categoryiconpath;
  String categoryDetails;
  
  String subcategoryName; 
  List  subcategoryImages;
  String?    subCategoryiconpath;
   String subcategoryprice;
   

Itemsdatanew({
  required this.categoryName,
  
  required this.categoryDetails,
  required this.categoryiconpath,
   required this.subcategoryName,
  required  this.subcategoryImages,
    this.subCategoryiconpath,
   required this.subcategoryprice
   
});
}

 List<Map<String, dynamic>> itemsdatanew = [
   {
             
              
              "price" : "\$6",
              "name": "Mc Donalds Burger" ,
              "image":  [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
             
              } ,

 ];