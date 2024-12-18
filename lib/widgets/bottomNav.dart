import 'package:flutter/material.dart';
import '../MainMenu/bottomBar/home.dart';
import '../MainMenu/bottomBar/contacts.dart';
import '../MainMenu/bottomBar/laws.dart';
import '../MainMenu/bottomBar/self_awareness_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
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
    HomePage(),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Current selected index
        onTap: _onItemTapped, // Handle tab selection
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),       // Home tab icon
            label: 'Home',
          ),
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