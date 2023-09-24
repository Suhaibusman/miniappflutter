import 'package:flutter/material.dart';
import 'package:miniapp/Data/favouriteitems.dart';
import 'package:miniapp/models/deals_part.dart';
import 'package:miniapp/screens/category/models/categorydata.dart';
import 'package:miniapp/screens/navbar/bottomnavigation.dart';


class FavouriteScreenData extends StatefulWidget {
  const FavouriteScreenData({super.key});

  @override
  State<FavouriteScreenData> createState() => _FavouriteScreenDataState();
}

class _FavouriteScreenDataState extends State<FavouriteScreenData> {
     List<DealsPart> deals=[];
  void _getDeals() {
    setState(() {
      deals = DealsPart.getDeals();
    });
  }
  @override
  Widget build(BuildContext context) {
    _getDeals();
    return  Scaffold(
    
      body: 
      favitemslist.isEmpty? const Center(child: Text("There is no items in favourite")):
      ListView.builder(
                itemCount: favitemslist.length,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Column(
                    children: [
                      ListTile(
                        leading:  CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.amber,
                           child: Image.asset(favitemslist[index].iconpath),
                        ),
                        title: Text(favitemslist[index].name ,style: const TextStyle(fontFamily: "Manrope" ,fontSize: 14 ,color: Color(0xff1E222B), fontWeight: FontWeight.bold),),
                        subtitle: Text(favitemslist[index].price ,style: const TextStyle(fontFamily: "Manrope" ,fontSize: 14 ,color: Color(0xff1E222B), fontWeight: FontWeight.w400),),
                        trailing:  Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                        IconButton(onPressed: (){
                            setState(() {
                              favitemslist.removeWhere((item) => item.name == favitemslist[index].name
                              
                              // ||item.name == deals[index].description
                              
                              );
                          itemsdatanew[index]["isFav"] = false;
                            // deals[index].isFav =false;
                            });
                        }, icon: const Icon(Icons.favorite),
                        color: Colors.red,
                        )
                          ],
                        ),
                      ),
                      const Divider(color: Colors.black,)
                    ],
                  ),
                );
              },),
      
        bottomNavigationBar: const CustomBottomNavigationBar( pageindex: 2),
    );
  }
}