import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniapp/screens/more/widgets/addtocart.dart';

class CartScreenData extends StatefulWidget {
  const CartScreenData({super.key});

  @override
  State<CartScreenData> createState() => _CartScreenDataState();
}

class _CartScreenDataState extends State<CartScreenData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          
          // ListView.builder(
          //   itemCount: ,
          //   itemBuilder: (context, index) {
          //   return ListTile(
          //     leading: SvgPicture.asset(
          //                 addtocart[index].iconpath,
          //                 height: 50,
          //                 width: 50,
          //               ),
          //       title: Text(""),
          //   );
          // },)
        ],
      ),
    );
  }
}