import 'package:flutter/material.dart';
import 'package:flutter_application_1/MainMenu/MainMenu.dart';
import 'package:flutter_application_1/MainMenu/bottomBar/Laws.dart';
import 'package:flutter_application_1/MainMenu/bottomBar/contacts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget>pages=[
    MainmenuScreen(),
    ContacPage(),
    LawsPage(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home)),
        ]
        ),       
        );
  }
}