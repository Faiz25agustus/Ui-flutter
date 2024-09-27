
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_application_1/pages/CartPage.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/Signup.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child:   Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: Colors.blueAccent,
          ),
          const Padding(padding: EdgeInsets.only(left: 20),
          child: Text('FASHOP ', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,
      color: Colors.blueAccent
          ),
          ),
          ),
          const Spacer(),
          badges.Badge(
            badgeStyle:   badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            badgeContent: Text('3', style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
            onTap:() {
              Navigator.pushNamed(context, "ChatPage");
            },
            child: Icon(
              Icons.message,
              size: 32,
              color: Colors.blueAccent,
            ),
            ),
          ),
        ],
      ),
    );
  }
}