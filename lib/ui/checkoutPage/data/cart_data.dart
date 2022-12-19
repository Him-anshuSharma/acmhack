import 'package:flutter/material.dart';

class CartEntry {
  late String cartItemName;
  late String cartItemImage;
  late int cartItemQuantity;
  late int cartItemPrice;
  CartEntry(this.cartItemName,this.cartItemImage,this.cartItemQuantity,this.cartItemPrice);

  String getCartItemName(){
    return cartItemName;
  }
  String getCartItemImage(){
    return cartItemImage;
  }
  int getCartItemPrice(){
    return cartItemPrice;
  }
  int getCartItemQuantity(){
    return cartItemQuantity;
  }
}

CartEntry Sofa1 = CartEntry("sofa","assets/bed.png",2,2000);
CartEntry Sofa2= CartEntry("sofa 123", "assets/bed.png",2,1950);
CartEntry Sofa3 = CartEntry("sofa 423","assets/bed.png",4,5000);
CartEntry Sofa4 = CartEntry("sofa 99", "assets/bed.png",5,6000);
CartEntry Sofa5 = CartEntry("sofa 69","assets/bed.png",2,4000);
CartEntry Sofa6 = CartEntry("sofa 22", "assets/bed.png",3,5000);
