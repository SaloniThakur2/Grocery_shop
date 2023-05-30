

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/components/model/cart_model.dart';
import 'package:provider/provider.dart';

import '../components/grocery_item_tile.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //floatingbutton
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CartPage();
          },
        ),
        ),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        SizedBox(height: 48),

          Padding(
            
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(            
            "Sylhet, Bangladesh",
            style: TextStyle(color: Colors.black),            
          ),          
        ),

        SizedBox(height: 48),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Good morning, Mate",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        SizedBox(height: 4),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Let's order fresh items for you",
            style: GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 24),
 
         // divider
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 24.0),
           child: Divider(),
         ),

        const SizedBox(height: 24),

        // categories + grid
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,          
            ),
          child: Text(
            "Categories",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              ),
            ),
        ),

       Expanded(
        child: Consumer<CartModel>(
          builder: (context, value, child) {
            return GridView.builder(
             itemCount: value.shopItems.length,
             padding: EdgeInsets.all(12),
             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.3,
              ),
          itemBuilder: (context, index) {
            return GroceryItemTile(
              itemName: value.shopItems[index][0],
              itemPrice: value.shopItems[index][1],
              imagePath: value.shopItems[index][2],
              color: value.shopItems[index][3],
              onPressed: () {},
            );
            },
          );
        },
      ),
      ),
    ],
  ),
  );
  }
}