import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MainMenu/LiveSafe/LiveSafe.dart';
import 'package:flutter_application_1/MainMenu/emergeincies.dart/emergency.dart';
import 'package:flutter_application_1/MainMenu/Sider/slider.dart';


class MainmenuScreen extends StatelessWidget {
  MainmenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 63, 17, 177),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 80, 17, 177),
        title: const Text(
          "Nari App",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: FirebaseAuth.instance.signOut,
            icon: const Icon(
              size: 30,
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
       body:SingleChildScrollView(
        child: Column(
          children: [
            SliderCard(),
            SizedBox(height: 15),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text("Emergency",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                ),
                SizedBox(width: 10),
                Container(height: 40, width: 40, child: Image(image: AssetImage("asset/Imges/alert.png"))),     
              ],
            ),
        
             Emergency(),
             SizedBox(height: 10),
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text("LiveSafe",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white), ),
                ),
                Container(height: 40, width: 40, child: Image(image: AssetImage("asset/Imges/hospital.png"))),
        
              ],
             ),
             Livesafe(),
             const SizedBox(height: 15),
             ElevatedButton(onPressed: (){}, child: Text("Panic Button")),
             const SizedBox(height: 15),
             const Text("Below Update Coming Soon...", style: TextStyle(color: Colors.blueGrey),),
             OutlinedButton(
                onPressed: () {},
                child: const Text(
                  "Record Video & Audio",
                  style: TextStyle(fontSize: 20),
                ),
               ),
          ],
        ),
      ),
      
    );
  }
}
