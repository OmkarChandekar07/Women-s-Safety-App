// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Authentication/AuthScreen.dart';
// import 'package:flutter_application_1/main.dart';





// class Splashscreen extends StatelessWidget {
//   const Splashscreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home Screen"),),
//       body:  StreamBuilder(
//      stream: FirebaseAuth.instance.authStateChanges(),
//      builder: (context,snapshot){
//         if (snapshot.connectionState == ConnectionState.waiting) {
//          return Splashscreen(); 
//         }
//           if(snapshot.hasData){
//             return MainScreen();
//           }
//           return Authscreen();
//      },), // Display the selected screen
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    // Simulate a delay for the splash screen (3 seconds)
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => MainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('asset/Imges/wlogo.jpg'),
      ),
    );
  }
}
