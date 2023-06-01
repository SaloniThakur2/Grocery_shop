import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          //logo
          Padding(
            padding: const EdgeInsets.only(
              left: 80.0, right: 80, bottom: 40, top: 80,
            ),
            child: Image.asset(
              'lib/images/grocery-cart (1).png',
              
              ),
            
          ),

          //we deliver groceries
           Padding(
            
            padding: const EdgeInsets.all(24.0),
            
            child: Text(
              
              "We deliver groceries at your doorstep",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                fontSize: 34,
                fontWeight: FontWeight.bold,
                
              ),
            ),
          ),
          const SizedBox(height: 24),
          //fresh items everyday
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Groceer gives you fresh vegetables and fruits, Order fresh items from groceer.",
              textAlign: TextAlign.center,           
              style: TextStyle(color: Colors.grey[600],
              fontSize: 17,
              ),
              
              
            ),
          ),

          const Spacer(),
          //get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return const HomePage();
            },
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(235, 122, 120, 193),
              borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}