import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
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
            const SizedBox(height: 40),
            //title
            const Text(
              'Share n Purchase',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 40),
            //sub title
            const Text(
              'Sell and purchase your product here.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            //start new button
          ],
        ),
      ),
    );
  }
}
