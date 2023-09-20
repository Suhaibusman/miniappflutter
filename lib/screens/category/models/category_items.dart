class CategoryData{
  String categoryName;
  
  String categoryiconpath;
  String categoryDetails;
  
  String subcategoryName; 
  List  subcategoryImages;
  String?    subCategoryiconpath;
   String subcategoryprice;
   

CategoryData({
  required this.categoryName,
  
  required this.categoryDetails,
  required this.categoryiconpath,
   required this.subcategoryName,
  required  this.subcategoryImages,
    this.subCategoryiconpath,
   required this.subcategoryprice
   
});
}

 List<Map<String, dynamic>> categoryData = [
 {
    'category': "McDonalds",
    'image': "assets/images/CategoryandSub/categoryimages/icons8-part-alternation-mark-68.png",
    'details': "Karachi",
    
    'subcategories': [
      {
        'subcategory': [
          {
            "popular": [
              {"images" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" : "\$6",
              "name": "Mc Donalds Burger"
              } ,
              {"images" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" : "\$6",
              "name": "Mc Donalds Burger"
              },
              {"images" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" : "\$6",
              "name": "Mc Donalds Burger"
              }
            ] ,
            "lowprice" :[ {"image" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ] ,
              "price" : "\$3",
              "name": "burger"
              }],
            "bigdeals" :[ {"image" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" :"\$2",
              "name": "mini burger"
              }]
          }
        ],
        
      },
    
      // Add more subcategories for 'Fish'...
    ],
  },
  {
    'category': "KFC",
    'image': "assets/images/CategoryandSub/categoryimages/icons8-kfc-chicken-68.png",
    'details': "Karachi",
    'subcategories': [
      {
        'subcategory': [
          {
            "popular": [
              {"images" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" : "\$8",
              "name": "KFC Burger"
              } ,
              {"images" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" : "\$5",
              "name": "Kfc Burger"
              },
              {"images" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" : "\$6",
              "name": "Kfc Burger"
              }
            ] ,
            "lowprice" :[ {"image" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ] ,
              "price" : "\$3",
              "name": "burger"
              }],
            "bigdeals" :[ {"image" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" :"\$2",
              "name": "mini burger"
              }]
          }
        ],
        
      },
    
      // Add more subcategories for 'Fish'...
    ],
  },
   {
    'category': "Subway",
    'image': "assets/images/CategoryandSub/categoryimages/icons8-part-alternation-mark-68.png",
    'details': "Karachi",
    'subcategories': [
      {
        'subcategory': [
          {
            "popular": [
              {"images" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" : "\$6",
              "name": "Mc Donalds Burger"
              } ,
              {"images" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" : "\$6",
              "name": "Mc Donalds Burger"
              },
              {"images" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" : "\$6",
              "name": "Mc Donalds Burger"
              }
            ] ,
            "lowprice" :[ {"image" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ] ,
              "price" : "\$3",
              "name": "burger"
              }],
            "bigdeals" :[ {"image" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" :"\$2",
              "name": "mini burger"
              }]
          }
        ],
        
      },
    
      // Add more subcategories for 'Fish'...
    ],
  },
   {
    'category': "Pizza",
    'image': "assets/images/CategoryandSub/categoryimages/icons8-part-alternation-mark-68.png",
    'details': "Karachi",
    'subcategories': [
      {
        'subcategory': [
          {
            "popular": [
              {"images" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" : "\$6",
              "name": "Mc Donalds Burger"
              } ,
              {"images" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" : "\$6",
              "name": "Mc Donalds Burger"
              },
              {"images" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" : "\$6",
              "name": "Mc Donalds Burger"
              }
            ] ,
            "lowprice" :[ {"image" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ] ,
              "price" : "\$3",
              "name": "burger"
              }],
            "bigdeals" :[ {"image" : [
                "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-68.png"
              ,"assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100 (1).png",
              "assets/images/CategoryandSub/subcategoryimages/mcdonalds/icons8-hamburger-100.png"
              ],
              "price" :"\$2",
              "name": "mini burger"
              }]
          }
        ],
        
      },
    
      // Add more subcategories for 'Fish'...
    ],
  },

 ];