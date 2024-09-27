import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/CartPage.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/ProfilePage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 3; // Initialize with the home page

  final List<Widget> _pages = [
  Homepage(), // Replace with your actual home page widget
  CartPage(), // Replace with your actual cart page widget
  ProfilePage(), // Replace with your actual profile page widget
  // Add more pages here
];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _pages[_currentIndex], // Display the selected page
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          onTap: (index) {
            setState(() {
              _currentIndex = index; // Update the selected index
            });
          },
          height: 70,
          color: Colors.green,
          items: const [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_cart,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.list,
              size: 30,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

// Define your other pages (e.g., HomePage, CartPage, ProfilePage) as StatelessWidget or StatefulWidget.
// Implement their UI and logic accordingly.
