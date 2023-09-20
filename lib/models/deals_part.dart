class DealsPart{

  String price;
  String description;
  String description2;
  String iconpath;
  int quantity;
  bool isFav;
  DealsPart(
    {
     required this.price,required this.description ,required this.description2 ,required this.iconpath,required this.quantity,required this.isFav
    }
  );


  static List<DealsPart> getDeals(){
  List<DealsPart> deals=[];
  
  deals.add(
    DealsPart(price: "\$375", description: "Orange Package 1", description2: "1 Bundle", iconpath: "assets/images/orange.png", quantity: 1 ,isFav: false)
  );
  deals.add(
    DealsPart(price: "\$89", description: "Green Tea Package 2", description2: "1 Bundle", iconpath: "assets/images/greentea.png", quantity: 1,isFav: true)
  );   
 deals.add(
    DealsPart(price: "\$69", description: "Apple Package 2", description2: "1 Bundle", iconpath: "assets/images/apple.png", quantity: 1,isFav: false)
  );
 return deals;
  }
}