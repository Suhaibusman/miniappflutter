// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniapp/Data/addtocartlist.dart';
import 'package:miniapp/screens/category/models/categorydata.dart';
import 'package:miniapp/screens/checkoutpage/cartscreen.dart';
import 'package:miniapp/widgets/buttons.dart';
import 'package:miniapp/widgets/constant/colors.dart';


class ItemsDetailsPage extends StatefulWidget {
  const ItemsDetailsPage({
    Key? key,
    required this.itemdeatils,
  }) : super(key: key);

  final Itemsdatanew itemdeatils;

  @override
  State<ItemsDetailsPage> createState() => _ItemsDetailsPageState();
}

class _ItemsDetailsPageState extends State<ItemsDetailsPage> {
  final PageController _pageController = PageController();
  void addtoCart() {
  // Check if the item already exists in the addtoCartitems list.
  bool itemExists = addtoCartitems.any((item) =>
      item.name ==  widget.itemdeatils.itemname &&
      item.price ==  widget.itemdeatils.itemprice);

  if (itemExists) {
    // Show a dialog if the item is already in the cart.
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("${ widget.itemdeatils.itemname} is Already in cart"),
                    content: const Text("Do You Want To Remove From Cart?"),
        actions: [ TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: const Text("No")),
        TextButton(onPressed: () async{
          addtoCartitems.removeWhere((item) => item.name == widget.itemdeatils.itemname);
         widget.itemdeatils.isInCart = false;
                  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(
      "${widget.itemdeatils.itemname} is remove from Cart"
    )),
  );
          Navigator.pop(context);
     
        }, child: const Text("Yes"))],
        );
      },
    );
  } else {
    // Add the item to the cart and update its `isInCart` property.
    addtoCartitems.add(
      AddedItems(
        price:  widget.itemdeatils.itemprice,
        name:  widget.itemdeatils.itemname,
        quantity:  widget.itemdeatils.quantity,
        iconpath:  widget.itemdeatils.itemimages[2],
      ),
    );
      widget.itemdeatils.isInCart= true;
             ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(
      "${widget.itemdeatils.itemname} is added to Cart"
    )),
  );
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          // const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left :20 ,right: 20 ,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset("assets/images/Group 73.svg"
                  ,height: 40 ,width: 40,
                  ),
                ),
                const Text("Items" ,style: TextStyle(fontFamily: "Manrope" ,fontSize: 16,fontWeight: FontWeight.w400),),
                SvgPicture.asset("assets/images/Search Icon.svg" ,colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                // ,height: 18 ,width:  18,
                ),
                InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreenData(),)),
                    child: Stack(
  children: [
    SvgPicture.asset(
      "assets/images/carticonblack.svg",
      height: 24,
      width: 24,
      fit: BoxFit.cover,
    ),
    Positioned(
      top: 0, // Align to the top edge of the Stack
      right: 0, // Align to the right edge of the Stac
      child: CircleAvatar(
        radius: 9,
        backgroundColor: MyColors.darkYellowColor,
        child: Center(
          child: Text(
            addtoCartitems.length.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontFamily: "Manrope",
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    )
  ],
)

                  )
          
             
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: PageView.builder(
              controller: _pageController,
              itemCount: widget.itemdeatils.itemimages.length,
              itemBuilder: (context, index) {
                return CircleAvatar(
                    radius: 60,
                    backgroundColor: const Color(0xffF8F9FB),
                    child: Image.asset(widget.itemdeatils.itemimages[index]));
              },
            ),
          ),
          Container(
            // height: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xffF8F9FB),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                )),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Text(
                      widget.itemdeatils.itemname,
                      style: const TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${widget.itemdeatils.itemprice.toString()}/Kg",
                        style: const TextStyle(
                            color: Color(0xff2A4BA0),
                            fontFamily: "Manrope",
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 20,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular((20)),
                            color: const Color(0xff2A4BA0),
                          ),
                          child: const Center(
                            child: Text(
                              "\$22.04 OFF",
                              style: TextStyle(
                                  color: Color(0xffFAFBFD),
                                  fontFamily: "Manrope",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Reg: \$56.70 USD",
                        style: TextStyle(
                            color: Color(0xffB2BBCE),
                            fontFamily: "Manrope",
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xffF9B023),
                      ),
                      const Icon(
                        Icons.star,
                        color: Color(0xffF9B023),
                      ),
                      const Icon(
                        Icons.star,
                        color: Color(0xffF9B023),
                      ),
                      const Icon(
                        Icons.star,
                        color: Color(0xffF9B023),
                      ),
                      const Icon(
                        Icons.star_half,
                        color: Color(0xffF9B023),
                      ),
                      Text("${widget.itemdeatils.reviews} Reviews",
                          style: const TextStyle(
                              color: Color(0xffA1A1AB),
                              fontFamily: "Manrope",
                              fontSize: 14,
                              fontWeight: FontWeight.w400))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButtonWidget(
                        buttonText: "Add to Cart",
                        onPressed: () {
                           addtoCart();
                        },
                        buttonHeight: 56,
                        buttonWidth: 143,
                        backgroundColor: Colors.transparent,
                        fontColor: const Color(0xff2A4BA0),
                        borderColor: const Color(0xff2A4BA0),
                      ),
                      CustomButtonWidget(
                        buttonText: "Buy Now",
                        onPressed: () {},
                        buttonHeight: 56,
                        buttonWidth: 169,
                        backgroundColor: const Color(0xff2A4BA0),
                        fontColor: const Color(0xffFFFFFF),
                        borderColor: const Color(0xff2A4BA0),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Details",
                      style: TextStyle(
                          color: Color(0xff1E222B),
                          fontFamily: "Manrope",
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  Text(
                    widget.itemdeatils.categoryDetails,
                    style: const TextStyle(
                        height: 2, color: Color(0xff8891A5), fontSize: 16),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Nutritional facts",
                        style:
                            TextStyle(color: Color(0xff1E222B), fontSize: 16),
                      ),
                      Image.asset("assets/images/Fill 4.png")
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    thickness: 1.0,
                    color: Color(0xffB2BBCE),
                  ),
                   const SizedBox(
                    height: 20,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     const Text(
                  //       "Reviews",
                  //       style:
                  //           TextStyle(color: Color(0xff1E222B), fontSize: 16),
                  //     ),
                  //     Image.asset("assets/images/Fill 4.png")
                  //   ],
                  // ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
