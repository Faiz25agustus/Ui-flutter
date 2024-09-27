import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 5; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'images/$i.jpeg',
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 8), // Add some spacing between image and text
                  Text(
                    _getCategoryText(i), // Call a function to get the appropriate text
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  String _getCategoryText(int index) {
    switch (index) {
      case 1:
        return 'Fashion';
      case 2:
        return 'Electronic';
      case 3:
        return 'Furniture';
      case 4:
        return 'Gadget';
      default:
        return 'Unknown Category'; // Handle any other index gracefully
    }
  }
}
