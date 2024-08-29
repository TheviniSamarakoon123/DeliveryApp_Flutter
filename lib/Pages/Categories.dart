// ignore: file_names
import 'package:delivery_app_flutter/Pages/Checkout_ScrollView.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app_flutter/Pages/Vegetables.dart';
// ignore: unused_import
import 'package:delivery_app_flutter/Pages/SplashScreen.dart'; 

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
                  const SizedBox(height: 20), 
                  const Text(
                    'Categories',
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
                width: 350,
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
                  mainAxisSize: MainAxisSize.min,
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
              top: 160, 
              left: 20,
              right: 20,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCategoryButton('assets/veg.jpg', 'Vegetables\n(43)', () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Vegetables(),
                          ),
                        );
                      }),
                      _buildCategoryButton('assets/fruits.jpg', 'Fruits\n(32)', () {}),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCategoryButton('assets/bread.jpg', 'Bread\n(22)', () {}),
                      _buildCategoryButton('assets/sweets.jpg', 'Sweets\n(56)', () {}),
                    ],
                  ),
                  const SizedBox(height: 20), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCategoryButton('assets/noodles.jpg', 'Noodles\n(13)', () {}),
                      _buildCategoryButton('assets/coffee.jpg', 'Coffee\n(17)', () {}),
                    ],
                  ),
                ],
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
              icon: const Icon(Icons.shopping_cart, color: Color.fromARGB(255, 182, 182, 182)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Checkout_ScrollView()),
                );
              },
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

  Widget _buildCategoryButton(String imagePath, String label, VoidCallback onPressed) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(8.0), 
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, 
                  border: Border.all(
                    color: const Color.fromARGB(255, 180, 180, 180), 
                    width: 1.0,           
                  ),
                  borderRadius: BorderRadius.circular(12), 
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity, 
                      height: 150, 
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(9), 
                      ),
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerLeft, 
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0), 
                        child: Text(
                          label,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
