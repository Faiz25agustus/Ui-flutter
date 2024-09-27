import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/ChatPage.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/ItemsPage.dart';
import 'package:flutter_application_1/pages/LoginPage.dart';
import 'package:flutter_application_1/pages/ProfilePage.dart';
import 'package:flutter_application_1/widget/HomeAppBar.dart';
import 'package:flutter_application_1/pages/CartPage.dart';
import 'package:flutter_application_1/widget/CartAppBar.dart';
import 'package:flutter_application_1/pages/Signup.dart';
import 'package:flutter_application_1/widget/ButtonWidget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    routes: {

      "/": (context) => Homepage(),
      "LoginPage": (context) => LoginPage(),
      "CartPage": (context) => CartPage(),
      "SignupPage": (context) => SignupPage(),
      'ProfilePage': (context) => ProfilePage(),  
      "ItemPage": (context) => ItemPage(), 
      "ChatPage": (conetxt) => Chatpage(),

    },
    );
  }
}
