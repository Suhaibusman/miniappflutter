class CategoryData{
  String categoryName;
  String categoryPrice;
  String? iconpath;
  String categoryDetails;
  
  String subcategoryName; 
  String    subcategoryDetails;
  String?    subCategoryiconpath;
   String subcategoryprice;

CategoryData({
  required this.categoryName,
  required this.categoryPrice,
  required this.categoryDetails,
   this.iconpath,
   required this.subcategoryName,
  required  this.subcategoryDetails,
    this.subCategoryiconpath,
   required this.subcategoryprice
   
});



 List<Map<String, dynamic>> getCategoryData(){

  List<Map<String, dynamic>> categoryData = [
  {
  }
];
categoryData.add(
    {
    "category": {
      categoryName: "Fishes",
      categoryDetails: "fromSea",
      iconpath: "assets/images/CategoryandSub/categoryimages/icons8-fish-68.png",
    },
    "subcategory": [{
      subcategoryName: "Big and fresh fishes",
      subcategoryDetails: "fresh from Sea",
      subCategoryiconpath: "assets/images/LemonLores.svg",
      subcategoryprice: "\$36/KG",
    },
    {
      subcategoryName: "Beef Meat",
      subcategoryDetails: "Organic fresh",
      subCategoryiconpath: "assets/images/CategoryandSub/subcategoryimages/icons8-cow-68.png",
      subcategoryprice: "\$90/KG",
    },
    {
      subcategoryName: "Mutton Meat",
      subcategoryDetails: "Organic fresh",
      subCategoryiconpath: "assets/images/CategoryandSub/subcategoryimages/icons8-goat-68.png",
      subcategoryprice: "\$120/KG",
    },
    ]
  },
);


    
 return categoryData;
}

}