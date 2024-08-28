import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:delivery_app_flutter/Pages/Vegetables.dart';
import 'package:delivery_app_flutter/Pages/Checkout_ScrollView.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 45, 
                    left: 20,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 0, 0, 0)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Positioned(
                    top: 85, 
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/bostonlettuce.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 143, 143, 143), 
                  ),
                ),
                Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 212, 212, 212), 
                  ),
                ),
                Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 212, 212, 212), 
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 575, 
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30), 
                  topRight: Radius.circular(30),
                ),
                child: Container(
                  color: const Color.fromARGB(255, 245, 245, 245),
                  child: Padding(
                    padding: const EdgeInsets.all(16), 
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Boston Lettuce', 
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 34,
                            fontWeight: FontWeight.bold, 
                          ),
                        ),
                        const SizedBox(height: 12), 
                        const Text(
                          '1.10 / piece', 
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 28, 
                          ),
                        ),
                        const SizedBox(height: 10), 
                        const Text(
                          '~ 150 gr/ piece', 
                          style: TextStyle(
                            color: Color.fromARGB(255, 122, 255, 118),
                            fontSize: 20, 
                          ),
                        ),
                        const SizedBox(height: 23), 
                        const Text(
                          'Spain', 
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 14), 
                        const Text(
                          'Lettuce is an annual plant of the daisy family,\nAsteraceae. It is most often grown as a leaf\nvegetable, but sometimes for its stem and\nseeds. Lettuce is most often used for salads,\nalthough it is also seen in other kinds of food,\nsuch as soups, sandwiches and wraps; it can\nalso be grilled.', // Second text
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16, 
                          ),
                        ),
                        const SizedBox(height: 50), 
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: const BorderSide(color: Color.fromARGB(255, 180, 180, 180)),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20), 
                                minimumSize: const Size(100, 40), 
                              ),
                              child: const Icon(Icons.favorite_outline, color: Color.fromARGB(255, 145, 145, 145)),
                            ),
                            const SizedBox(width: 17),
                            ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Checkout_ScrollView()),
                                );
                              },
                              icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
                              label: const Text(
                                'ADD TO CART',
                                style: TextStyle(
                                  color: Colors.white
                                  ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 122, 255, 118),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40), 
                                minimumSize: const Size(225, 40), 
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
