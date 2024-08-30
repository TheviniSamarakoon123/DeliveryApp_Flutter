import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 0, 0, 0)),
          onPressed: () {
            Navigator.of(context).pop(); 
          },
        ),
        title: const Text(
          'Credit / Debit card',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white, 
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(16), 
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10), 
                child: Image.asset(
                  'assets/creditcard.jpg', 
                  width: 500, 
                  height: 240, 
                  fit: BoxFit.cover, 
                ),
              ),
              const SizedBox(height: 15), 
              const Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  Icon(
                    Icons.camera_alt_outlined, 
                    size: 35, 
                    color: Colors.black54, 
                  ),
                ],
              ),
              const SizedBox(height: 10), 
              const Text(
                'Name on card', 
                textAlign: TextAlign.left, 
                style: TextStyle(
                  fontSize: 16, 
                  color: Colors.black87, 
                ),
              ),
              const SizedBox(height: 5), 
              Container(
                width: double.infinity, 
                padding: const EdgeInsets.all(16), 
                decoration: BoxDecoration(
                  color: Colors.grey[200], 
                  borderRadius: BorderRadius.circular(10), 
                  border: Border.all(color: Colors.grey), 
                ),
                child: const Text(
                  'A Robert', 
                  style: TextStyle(
                    fontSize: 20, 
                    color: Color.fromARGB(255, 0, 0, 0), 
                  ),
                ),
              ),
              const SizedBox(height: 25), 
              const Text(
                'Card number', 
                textAlign: TextAlign.left, 
                style: TextStyle(
                  fontSize: 16, 
                  color: Colors.black87, 
                ),
              ),
              const SizedBox(height: 5), 
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16), 
                decoration: BoxDecoration(
                  color: Colors.grey[200], 
                  borderRadius: BorderRadius.circular(10), 
                  border: Border.all(color: Colors.grey), 
                ),
                child: const Text(
                  '5258 9712 3456 7890', 
                  style: TextStyle(
                    fontSize: 20, 
                    color: Color.fromARGB(255, 0, 0, 0), 
                  ),
                ),
              ),
              const SizedBox(height: 25), 
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [
                  Text(
                    'Expiry Date', 
                    style: TextStyle(
                      fontSize: 16, 
                      color: Colors.black87, 
                    ),
                  ),
                  Spacer(), 
                  Text(
                    'CVC', 
                    style: TextStyle(
                      fontSize: 16, 
                      color: Colors.black87, 
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5), 
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16), 
                      decoration: BoxDecoration(
                        color: Colors.grey[200], 
                        borderRadius: BorderRadius.circular(10), 
                        border: Border.all(color: Colors.grey), 
                      ),
                      child: const Text(
                        '00/00', 
                        style: TextStyle(
                          fontSize: 20, 
                          color: Colors.black, 
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10), 
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16), 
                      decoration: BoxDecoration(
                        color: Colors.grey[200], 
                        borderRadius: BorderRadius.circular(10), 
                        border: Border.all(color: Colors.grey), 
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '890', 
                            style: TextStyle(
                              fontSize: 20, 
                              color: Colors.black, 
                            ),
                          ),
                          Icon(
                            Icons.credit_card_rounded, 
                            size: 30, 
                            color: Colors.black54, 
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), 
              SizedBox(
                width: double.infinity, 
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16), 
                    backgroundColor: const Color.fromARGB(255, 122, 255, 118), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), 
                    ),
                  ),
                  child: const Text(
                    'USE THIS CARD',
                    style: TextStyle(
                      fontSize: 14, 
                      color: Colors.white, 
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
