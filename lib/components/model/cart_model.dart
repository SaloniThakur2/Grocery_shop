import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {

  // list of items on sale
  final List _shopItems = [
    //[ itemName, itemPrice, imagePath, color ]
    ["Carrot", "4.00", "lib/images/carrot.png", Colors.orange],
    ["Avocado", "2.00", "lib/images/avocado.png", Colors.green],
    ["Chicken", "12.80", "lib/images/chicken-leg.png", Colors.brown],
    ["Banana", "1.00", "lib/images/banana.png", Colors.yellow],
  ];
    
   // list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

 

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
  
