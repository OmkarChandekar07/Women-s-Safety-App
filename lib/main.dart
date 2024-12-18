// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Authentication/AuthScreen.dart';
// import 'package:flutter_application_1/MainMenu/MainMenu.dart';
// import 'package:flutter_application_1/Authentication/SplashScreen.dart';
// import 'Authentication/firebase_options.dart';


// void main()async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Women Safety App',
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//       ),
//      home: StreamBuilder(
//      stream: FirebaseAuth.instance.authStateChanges(),
//      builder: (context,snapshot){
//         if (snapshot.connectionState == ConnectionState.waiting) {
//          return Splashscreen(); 
//         }
//           if(snapshot.hasData){
//             return MainmenuScreen();
//           }
//           return Authscreen();
//      },),
//     );
//   }
// }
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Authentication/SplashScreen.dart';
import 'package:flutter_application_1/Authentication/firebase_options.dart';
import 'package:flutter_application_1/MainMenu/MainMenu.dart';
import '../MainMenu/bottomBar/contacts.dart';
import '../MainMenu/bottomBar/laws.dart';
import '../MainMenu/bottomBar/self_awareness_screen.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bottom Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // List of all tabs/screens
  final List<Widget> _screens = [
    MainmenuScreen(),
    ContacPage(),
    LawsPage(),
    SelfAwarenessScreen(),
  ];

  // Function to handle tab changes
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
//  _screens[_selectedIndex]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Current selected index
        onTap: _onItemTapped, // Handle tab selection
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),       
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 70, 17, 177)),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone), // Contact tab icon
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gavel),      // Laws tab icon
            label: 'Laws',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.self_improvement), // Self-awareness tab icon
            label: 'Self-awareness',
          ),
        ],
      ),
    );
  }
}