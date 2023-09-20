import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniapp/Data/addtocartlist.dart';
import 'package:miniapp/models/deals_part.dart';

class DealsOnFruit extends StatefulWidget {
  const DealsOnFruit({super.key});

  @override
  State<DealsOnFruit> createState() => _DealsOnFruitState();
}

class _DealsOnFruitState extends State<DealsOnFruit> {
    List<DealsPart> deals=[];
  void _getDeals() {
    setState(() {
      deals = DealsPart.getDeals();
    });
  }

  void addtocart(int index){
    addtoCartitems.add(AddedItems(price: deals[index].price, name: deals[index].description, quantity: deals[index].quantity, iconpath: deals[index].iconpath));
  }
  @override
  Widget build(BuildContext context) {
_getDeals();
    return SizedBox(
      height: 194,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Color(0xffE0E2EE),
              ),
              width: 167,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 30,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset(deals[index].iconpath,height: 68, width: 68,),
                          ),
                      ),
                      const SizedBox(width: 20,),
                      Column(
                        children: [ 
                           
                          
                          Stack(
                                    children: [
                                      const CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Color(0xff2A4BA0),
                                      ),
                                      Positioned(
                                        left: 6, top: 6,
                                        child: SvgPicture.asset(
                                            "assets/images/plus-outline (3) 1.svg",fit: BoxFit.cover,),
                                      )
                                    ],
                                  ),
                                  IconButton(
                            
                            onPressed: (){
                                       setState(() {
                                        if (deals[index].isFav==true) {
                                          deals[index].isFav=false;
                                        } else {
                                          deals[index].isFav=true;
                                        }
                                      });
                                    }, icon:  Icon(Icons.favorite_rounded ,
                                    color: deals[index].isFav==true ?const Color.fromARGB(255, 250, 0, 0) :Colors.grey,))
                                  ,
                                  ],
                      )
                    ],
                  ),
                 
                                  Text(deals[index].price ,style: const TextStyle(
                                    fontFamily: "Manrope" ,fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),) ,
                                   Text(deals[index].description ,style: const TextStyle(
                                    fontFamily: "Manrope" ,fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff616A7D)
                                  ),),
                                  Text(deals[index].description2 ,style: const TextStyle(
                                    fontFamily: "Manrope" ,fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff616A7D)
                                  ),)
                ],
              )
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: deals.length),
    );
  }
}