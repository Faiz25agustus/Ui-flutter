import 'package:flutter/material.dart';

class ItemAppbar extends StatelessWidget {
  const ItemAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
         InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.blueAccent,
          ),
         ),
         Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Product",
            style: TextStyle(
             fontSize: 23,
             fontWeight: FontWeight.bold,
             color: Colors.blueAccent
            ),
          ),
          ),
          Spacer(),
          Icon(
            Icons.favorite,
            size: 30,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}