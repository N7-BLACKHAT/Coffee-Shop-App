import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    //black coffee
    Coffee(
      name: 'Long Black',
      price: '380',
      imagePath: 'lib/images/long_black.png',
    ),
    //latte
    Coffee(
      name: 'Latte',
      price: '400',
      imagePath: 'lib/images/latte.png',
    ),
    //espresso
    Coffee(
      name: 'Espresso',
      price: '450',
      imagePath: 'lib/images/espresso.png',
    ),
    //iced coffee
    Coffee(
      name: 'Iced Coffee',
      price: '550',
      imagePath: 'lib/images/iced_coffee.png',
    ),
  ];
  //user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
