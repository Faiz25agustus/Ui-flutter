import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/CartPage.dart';
class CartAppbar extends StatelessWidget {
  const CartAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.blueAccent
            ),
          ),
          Padding(padding:EdgeInsets.only(left: 20),
          child: Text(
               'Cart',
               style: TextStyle(
                     fontSize: 23,
                     fontWeight: FontWeight.bold,
                                   color: Colors.blueAccent,
              
               ),
          ),
          ),
          const Spacer(),
          const Icon(
            Icons.more_vert,
            size: 30,
            color: Color(0xFF4C53A5),
 
          )
        ],
      ),
    );
  }
}