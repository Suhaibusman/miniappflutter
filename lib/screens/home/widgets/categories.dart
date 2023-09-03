import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miniapp/models/categories_part.dart';

class CategoriesBar extends StatefulWidget {
  const CategoriesBar({super.key});

  @override
  State<CategoriesBar> createState() => _CategoriesBarState();
}

class _CategoriesBarState extends State<CategoriesBar> {
  List<Categorypart> category = [];
  void _getCategories() {
    setState(() {
      category = Categorypart.getCategorypart();
    });
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return SizedBox(
      height: 194,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Color(0xffE0E2EE),
                ),
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, left: 20),
                        child: SvgPicture.asset(
                          category[index].iconpath,
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Color(0xffE0E2EE),
                    ),
                    Text(
                      category[index].simplegetText,
                      style: const TextStyle(
                          fontFamily: "Manrope",
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      category[index].orderdetails,
                      style: const TextStyle(
                        fontFamily: "Manrope",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff616A7D),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, top: 10),
                        child: Container(
                          height: 24,
                          width: 108,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Color(0xffFFFFFF)),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  "Unit",
                                  style: TextStyle(
                                    fontFamily: "Manrope",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff616A7D),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  category[index].categoryPrice,
                                  style: const TextStyle(
                                    fontFamily: "Manrope",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: InkWell(
                                  onTap: (){},
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
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 0.1),
          itemCount: category.length),
    );
  }
}
