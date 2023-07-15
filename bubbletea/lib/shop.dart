import 'package:flutter/material.dart';

import 'drink.dart';

class Shop extends ChangeNotifier {
  final List<Drink> _shop = [
    Drink(name: "Kopi Tubruk", price: "10k", imagePath: "lib/images/kopi1.png"),
    Drink(name: "Kopi Latte", price: "20k", imagePath: "lib/images/kopi2.png"),
    Drink(name: "Kopi Madesu", price: "5k", imagePath: "lib/images/kopi3.png")
  ];

  final List<Drink> _userCart = [];

  List<Drink> get shop => _shop;

  List<Drink> get cart => _userCart;

  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}
