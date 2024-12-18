import 'package:flutter/material.dart';
import 'package:flutter_application_1/MainMenu/LiveSafe/BusStation.dart';
import 'package:flutter_application_1/MainMenu/LiveSafe/Hospital.dart';
import 'package:flutter_application_1/MainMenu/LiveSafe/Medical.dart';
import 'package:flutter_application_1/MainMenu/LiveSafe/PoliceStationCard.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class Livesafe extends StatelessWidget {
  const Livesafe({super.key});

  static Future<void>openMap(String location)async{
    String googleurl="https://www.google.com/maps/search/$location";
    final Uri _url = Uri.parse(googleurl);
    try{
      await launchUrl(_url);
    }catch (e){
      Fluttertoast.showToast(msg: "Something Went Wrong");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: ListView(

        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          PoliceStationCard(onMapFunction: openMap,),
          Hospital(onMapFunction: openMap,),
          Medical(onMapFunction: openMap,),
          Busstation(onMapFunction: openMap,),
        ],
      ),
    );
  }
}