import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/ItemsPage.dart';

// ignore: must_be_immutable
class Itemswidget extends StatelessWidget {
   Itemswidget({super.key});

List<String> myProductName = [
    'Celana',
    'Tv',
    'Kasur',
        'Headset Game',
];

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
childAspectRatio: 0.60,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < myProductName.length; i++)
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 8),
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                '-50%',
                                style: TextStyle(fontSize: 14, color: Colors.white,
                                fontWeight: FontWeight.bold ),
                              ),
                            ),
                            const Icon(Icons.favorite_border, color: Colors.red,)
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context) {
                              return ItemPage();
                            },)
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: Image.asset(
                              'images/${i + 1}.jpeg',
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            myProductName[i],
                            style: const  TextStyle(
                              fontSize: 16,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        const Padding(padding:EdgeInsets.symmetric(vertical: 5)),
                                 Container(
                      alignment: Alignment.centerLeft,
                              child: const Text(
                                'Description Product',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                )
                              ),
                              
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                              Icons.shopping_cart_checkout,
                              color: Colors.blueAccent,
                            ),
                        ],
                      ),
                        Row(      
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('\$50'
                            ),
                            
                          ],
                        )
                        
                      ],
                    ),

        )
      ],
    );
  }
}