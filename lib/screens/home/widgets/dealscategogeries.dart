import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: SvgPicture.asset(deals[index].iconpath,height: 68, width: 68,),
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Stack(
                                      children: [
                                        const CircleAvatar(
                                          radius: 12,
                                          backgroundColor: Color(0xff2A4BA0),
                                        ),
                                        Positioned(
                                          left: 6, top: 6,
                                          child: SvgPicture.asset(
                                              "assets/images/plus-outline (3) 1.svg"),
                                        )
                                      ],
                                    ),
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