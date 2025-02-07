import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 25,
          ),
          child: Column(
            children: [
              //logo

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/pic2.png',
                  height: 240,
                ),
              ),
              const SizedBox(height: 30),
              //title
              const Text(
                'Share n Purchase',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 30),
              //sub title
              const Text(
                'Sell and purchase your product here.you can sell what ever you want',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              //start now button
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(25),
                child: Center(
                  child: const Text(
                    'Shop now',
                    style: TextStyle(color: Colors.white),
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
