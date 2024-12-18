import 'package:flutter/material.dart';
import 'package:flutter_application_1/MainMenu/emergeincies.dart/Ambulance.dart';
import 'package:flutter_application_1/MainMenu/emergeincies.dart/fire.dart';
import 'package:flutter_application_1/MainMenu/emergeincies.dart/policeEmergency.dart';

class Emergency extends StatelessWidget {
  const Emergency({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          PoliceEmergency(),
          AmbulanceEmergency(),
          FireEmergency(),
          
        ],
      ),
    );
  }
}