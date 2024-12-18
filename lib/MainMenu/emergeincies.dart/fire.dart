import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FireEmergency extends StatelessWidget {
  const FireEmergency({super.key});
   final String phoneNumber = "108";

      // Function to launch the dialer
  void _launchDialer(String number) async {
    final Uri telUri = Uri(scheme: 'tel', path: number);
    if (await canLaunchUrl(telUri)) {
      await launchUrl(telUri);
    } else {
      throw 'Could not launch $number';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,bottom: 5.0),
      child: Card(
        elevation:5,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
        child: Container(
          height: 180,
          width: MediaQuery.of(context).size.width*0.7,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
              Color(0xFFFD8080),
               Color(0xFFFB8580),
                Color(0xFFFBD079),
            ])
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor:Colors.white.withOpacity(0.5) ,
                  child: Image.asset("asset/Imges/flame.png"),
                ),
               Expanded(
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text("Fire Brigade",style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width*0.06,fontWeight: FontWeight.bold),),
                     Text("Call 101 for Fire Emergency",style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width*0.046,fontWeight: FontWeight.bold),),
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(20),
                           
                    ),
                    child: Center(child: Text("100",style: TextStyle(color: Colors.red[300],fontSize: MediaQuery.of(context).size.width*0.055,fontWeight: FontWeight.bold))),
                  )
                  ],
                 ),
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}