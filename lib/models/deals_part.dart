class DealsPart{

  String price;
  String description;
  String description2;
  String iconpath;

  DealsPart(
    {
     required this.price,required this.description ,required this.description2 ,required this.iconpath
    }
  );


  static List<DealsPart> getDeals(){
  List<DealsPart> deals=[];
  
  deals.add(
    DealsPart(price: "\$375", description: "Orange Package 1", description2: "1 Bundle", iconpath: "assets/images/Orange-Citrus.svg")
  );
  deals.add(
    DealsPart(price: "\$89", description: "Green Tea Package 2", description2: "1 Bundle", iconpath: "assets/images/greentea-inacup.svg")
  );   
 deals.add(
    DealsPart(price: "\$69", description: "Apple Package 2", description2: "1 Bundle", iconpath: "assets/images/1552371935.svg")
  );
 return deals;
  }
}