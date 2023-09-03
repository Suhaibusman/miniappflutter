import 'package:flutter/material.dart';

class SavedTime{
  String timeText;
  String descrptionText;
  
  String description2;
  Color boxColor;

SavedTime({
  required this.timeText,
  required this.descrptionText,
  required this.description2,
 
  required this.boxColor
});



static List<SavedTime> getTime(){
  List<SavedTime> savedTimes=[];

    savedTimes.add(

      SavedTime(timeText: "346", descrptionText: "USD", description2: "Your Total Savings", boxColor: const Color(0xffF9B023))
    );

  savedTimes.add(

      SavedTime(timeText: "215", descrptionText: "HRS", description2: "Your Time Saved", boxColor: const Color.fromARGB(255, 9, 255, 173))
    );

 return savedTimes;
}

}