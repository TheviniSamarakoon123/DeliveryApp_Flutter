import 'package:flutter/material.dart';
import 'package:delivery_app_flutter/Pages/Payment.dart';


class Checkout_ScrollView extends StatefulWidget {
  const Checkout_ScrollView({super.key});

  @override
  State<Checkout_ScrollView> createState() => _Checkout_ScrollViewState();
}

class _Checkout_ScrollViewState extends State<Checkout_ScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Spacer(flex: 100),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 105),
                const Text(
                  'Checkout',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 2),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          SizedBox(
            height: 745,
            child: Container(
              color: const Color.fromARGB(255, 245, 245, 245),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Payment method',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Payment(),
                              ),
                            );
                          },
                          child: const Text(
                            'CHANGE',
                            style: TextStyle(
                              color: Color.fromARGB(255, 72, 31, 97),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Icon(
                          Icons.credit_card,
                          color: Colors.black,
                          size: 24,
                        ),
                        SizedBox(width: 30),
                        Text(
                          '**** **** **** 7890',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery address',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'CHANGE',
                          style: TextStyle(
                            color: Color.fromARGB(255, 72, 31, 97),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: Colors.black,
                          size: 24,
                        ),
                        SizedBox(width: 30),
                        Flexible(
                          child: Text(
                            'A Robert\nCesu 31 k-2.5.st, SIA Chili\nRiga\nLV-1012\nLatvia',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery options',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'CHANGE',
                          style: TextStyle(
                            color: Color.fromARGB(255, 72, 31, 97),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.nordic_walking_outlined,
                          color: Colors.black,
                          size: 24,
                        ),
                        SizedBox(width: 30),
                        Text(
                          "I'll pick it up myself",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Icon(
                          Icons.bike_scooter_outlined,
                          color: Colors.black,
                          size: 24,
                        ),
                        SizedBox(width: 30),
                        Text(
                          "By courier",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Icon(
                          Icons.done_rounded,
                          color: Color.fromARGB(255, 72, 31, 97),
                          size: 24,
                        ),
                        SizedBox(width: 30),
                        Text(
                          "By Drone",
                          style: TextStyle(
                            color: Color.fromARGB(255, 72, 31, 97),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.done_rounded,
                          color: Color.fromARGB(255, 72, 31, 97),
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Non-contact-delivery',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 26),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 175, 127, 205),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Text(
                                'Yes',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 72, 31, 97),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Positioned(
                              right: -1, 
                              child: Container(
                                width: 22,
                                height: 22,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
