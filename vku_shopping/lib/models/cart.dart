import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
// list of shoes for sale
List<Shoe> shoeShop = [
  Shoe(
    name: 'Predator',
    price: '257',
    description: 'MiddleField Boot',
    imagePath: 'lib/images/predator.png',
),
  Shoe(
    name: 'Samba',
    price: '90',
    description: 'Sneaker',
    imagePath: 'lib/images/samba.png',
),
  Shoe(
    name: 'Superstar',
    price: '110',
    description: 'Sneaker',
    imagePath: 'lib/images/superstar.jpg',
),
  Shoe(
    name: 'Crazyfast',
    price: '220',
    description: 'Winger Boot',
    imagePath: 'lib/images/crazyfast.png',
),

];

// list of items in user
List<Shoe> userCart = [];

// get list of shoes
List<Shoe> getShoeList() {
  return shoeShop;
} 

// get cart
List<Shoe> getUserCart() {
  return userCart;
}  

// add items
void addItemToCart(Shoe shoe) {
  userCart.add(shoe);
  notifyListeners();
}

// remove
void removeItemFromCart(Shoe shoe) {
  userCart.remove(shoe);
  notifyListeners();
}


}