// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniapp/widgets/buttons.dart';

import '../../models/categorydata.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  "assets/images/Group 73.svg",
                  height: 40,
                  width: 40,
                ),
              ),
              Text(
                widget.itemdeatils.itemname,
                style: const TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SvgPicture.asset(
                "assets/images/Search Icon.svg",
                colorFilter:
                    const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                // ,height: 18 ,width:  18,
              ),
              SvgPicture.asset(
                "assets/images/Cart Icon.svg",
                height: 24,
                width: 24,
              ),
            ],
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
                        "${widget.itemdeatils.itemprice}/Kg",
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
                        onPressed: () {},
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Reviews",
                        style:
                            TextStyle(color: Color(0xff1E222B), fontSize: 16),
                      ),
                      Image.asset("assets/images/Fill 4.png")
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
