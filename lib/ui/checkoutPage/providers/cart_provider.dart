import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:untitled/ui/checkoutPage/data/cart_data.dart';

class CartProvider extends ChangeNotifier {

  List<CartEntry> cartItems = [
    Sofa1 , Sofa2, Sofa3, Sofa4, Sofa5, Sofa6
  ];

  List<CartEntry> getCartItems(){
    return cartItems;
  }

  int getTotal(){
    int totalPrice = 0;
    for (int i = 0 ; i < cartItems.length; i++){
      totalPrice += cartItems[i].cartItemPrice * cartItems[i].cartItemQuantity;
    }
    return totalPrice;
  }
}