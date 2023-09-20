import 'package:flutter/material.dart';

import 'package:miniapp/models/savedtime_part.dart';

class SavedTimeBar extends StatefulWidget {
  const SavedTimeBar({super.key});

  @override
  State<SavedTimeBar> createState() => _SavedTimeBarState();
}

class _SavedTimeBarState extends State<SavedTimeBar> {
List<SavedTime> savedTimes=[];

    void _getSavedTime() {
    setState(() {
      savedTimes = SavedTime.getTime();
    });
  }

  @override
  Widget build(BuildContext context) {
     _getSavedTime();
    return SizedBox(
      height: 150,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 123,
              width: 158,
              decoration: BoxDecoration(
                  color: savedTimes[index].boxColor,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              margin: const EdgeInsets.only(top: 10 ,bottom:10),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(savedTimes[index].timeText,
                          style: const TextStyle(
                              fontSize: 26,
                              fontFamily: "Manrope",
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Text(savedTimes[index].descrptionText,
                          style: const TextStyle(
                              fontSize: 26,
                              fontFamily: "Manrope",
                              fontWeight: FontWeight.w200,
                              color: Colors.white)),
                     
                    ],
                  ),
                   Text(savedTimes[index].description2,
                          style: const TextStyle(
                              fontSize: 14,
                              fontFamily: "Manrope",
                              color: Colors.black)),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: savedTimes.length),
    );
  }
}