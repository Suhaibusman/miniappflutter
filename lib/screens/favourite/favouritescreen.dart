import 'package:flutter/material.dart';
import 'package:miniapp/Data/favouriteitems.dart';
import 'package:miniapp/screens/home/widgets/bottomnavigation.dart';


class FavouriteScreenData extends StatefulWidget {
  const FavouriteScreenData({super.key});

  @override
  State<FavouriteScreenData> createState() => _FavouriteScreenDataState();
}

class _FavouriteScreenDataState extends State<FavouriteScreenData> {
  @override
  Widget build(BuildContext context) {
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
                        trailing: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                          //   TextButton(onPressed: (){
                          //     decreaseQuantity(index);
                          //   }, child: Image.asset("assets/images/minus.png")),
                          //     Text(favitemslist[index].quantity.toString()),
                          //  TextButton(onPressed: (){
                          //   increaseQuantity(index);
                          //  }, child: Image.asset("assets/images/plus.png")),
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