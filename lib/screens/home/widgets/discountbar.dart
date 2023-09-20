import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniapp/models/discount_part.dart';

class DiscountBar extends StatefulWidget {
  const DiscountBar({super.key});

  @override
  State<DiscountBar> createState() => _DiscountBarState();
}

class _DiscountBarState extends State<DiscountBar> {
  List<Discountpart> discount = [];

    void _getDiscount() {
    setState(() {
      discount = Discountpart.getDiscount();
    });
  }

  @override
  Widget build(BuildContext context) {
     _getDiscount();
    return SizedBox(
      height: 150,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 123,
              width: 275,
              decoration: BoxDecoration(
                  color: discount[index].boxColor,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              margin: const EdgeInsets.only( top: 10 ,bottom:10),
              child: Row(
                children: [
                  SvgPicture.asset("assets/images/Image Icon.svg",fit: BoxFit.cover,),
                  Column(
                    children: [
                      Text(discount[index].simplegetText,
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: "Manrope",
                              color: Colors.white)),
                      Text(discount[index].discountpercent,
                          style: const TextStyle(
                              fontSize: 26,
                              fontFamily: "Manrope",
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text(discount[index].orderquantity,
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: "Manrope",
                              color: Colors.white)),
                    ],
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: discount.length),
    );
  }
}