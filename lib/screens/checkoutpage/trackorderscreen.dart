import 'package:flutter/material.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Image.asset("assets/images/back.png")) ,
                    const Text("Track Order" ,style: TextStyle(fontFamily: "Manrope" ,fontSize: 16 ,fontWeight: FontWeight.w400),),
                    
                  ],
            ),
            SizedBox(
    
              height: MediaQuery.of(context).size.height*0.8,
              width: MediaQuery.of(context).size.width,
             child: Image.asset("assets/images/trackorder.png")
            ),
          ],
        ),
      ),
    );
  }
}