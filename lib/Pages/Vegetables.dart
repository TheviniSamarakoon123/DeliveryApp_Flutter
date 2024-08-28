// ignore: file_names
import 'package:flutter/material.dart';
import 'package:delivery_app_flutter/Pages/Categories.dart';
import 'package:delivery_app_flutter/Pages/Item.dart';

class Vegetables extends StatefulWidget {
  const Vegetables({super.key});

  @override
  State<Vegetables> createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: const Color.fromARGB(255, 245, 245, 245),
            ),
            Positioned(
              top: 5,
              left: 20,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Vegetables',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 75,
              left: 20,
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 254, 254),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color.fromARGB(255, 180, 180, 180),
                    width: 1.5,
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Color.fromARGB(255, 152, 148, 148),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 250,
                          height: 50,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 175, 127, 205),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.check,
                                  color: Color.fromARGB(255, 72, 31, 97),
                                  size: 24),
                              SizedBox(width: 8),
                              Flexible(
                                child: Text(
                                  'Cabbage and lettuce (14)',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 72, 31, 97),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 220,
                          height: 50,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Center(
                            child: Text(
                              'Cucumbers and tomato',
                              style: TextStyle(
                                color: Color.fromARGB(255, 152, 148, 148),
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 185,
                          height: 50,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Center(
                            child: Text(
                              'Onion and garlic (8)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 152, 148, 148),
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 118,
                          height: 50,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Center(
                            child: Text(
                              'Peppers (7)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 152, 148, 148),
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 190,
                          height: 50,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Center(
                            child: Text(
                              'Potatoes and carrots',
                              style: TextStyle(
                                color: Color.fromARGB(255, 152, 148, 148),
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start, 
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/bostonlettuce.jpg',
                                width: MediaQuery.of(context).size.width / 2 - 40,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Boston Lettuce',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  const SizedBox(height: 4), 
                                  const Text(
                                    '1.10 / piece',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 152, 148, 148),
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  const SizedBox(height: 10), 
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
                                          padding: const EdgeInsets.all(8),
                                        ),
                                        child: const Icon(Icons.favorite_outline, color: Color.fromARGB(255, 145, 145, 145)),
                                      ),
                                      const SizedBox(width: 10),
                                      ElevatedButton(
                                        onPressed: () {
                                         Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const Item()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(255, 122, 255, 118),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start, 
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/purplecauliflower.jpg',
                                width: MediaQuery.of(context).size.width / 2 - 40,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Purple Cauliflower',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  const SizedBox(height: 4), 
                                  const Text(
                                    '1.85 / kg',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 152, 148, 148),
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  const SizedBox(height: 10), 
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
                                          padding: const EdgeInsets.all(8),
                                        ),
                                        child: const Icon(Icons.favorite_outline, color: Color.fromARGB(255, 145, 145, 145)),
                                      ),
                                      const SizedBox(width: 10),
                                      ElevatedButton(
                                        onPressed: () {
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(255, 122, 255, 118),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start, 
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/savoycabbage.jpg',
                                width: MediaQuery.of(context).size.width / 2 - 40,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Savoy Cabbage',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  const SizedBox(height: 4), 
                                  const Text(
                                    '1.45 / kg',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 152, 148, 148),
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
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
                                          padding: const EdgeInsets.all(8),
                                        ),
                                        child: const Icon(Icons.favorite_outline, color: Color.fromARGB(255, 145, 145, 145)),
                                      ),
                                      const SizedBox(width: 10),
                                      ElevatedButton(
                                        onPressed: () {
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(255, 122, 255, 118),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
        bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home, color: Color.fromARGB(255, 175, 127, 205)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Categories()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart_outlined, color: Color.fromARGB(255, 182, 182, 182)),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.man_4_outlined, color: Color.fromARGB(255, 182, 182, 182)),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}