import 'package:flutter/material.dart';

class CategoryData extends StatefulWidget {
  const CategoryData({super.key});

  @override
  State<CategoryData> createState() => _CategoryDataState();
}

class _CategoryDataState extends State<CategoryData> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 20),
            child: Container(
              height: 164,
              width: 154,
              decoration: const BoxDecoration(
                  color: Color(0xffE0E2EE),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
          );
        },
      ),
    );
  }
}
