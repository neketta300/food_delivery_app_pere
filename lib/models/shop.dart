import 'package:collection/collection.dart';
import 'package:del_app_green/models/cart_item.dart';
import 'package:del_app_green/models/food.dart';
import 'package:del_app_green/models/food_banner.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // banner list
  final List<FoodBanner> _banners = [
    FoodBanner(imagePath: "assets/images/banner1.png"),
    FoodBanner(imagePath: "assets/images/banner2.png"),
    FoodBanner(imagePath: "assets/images/banner3.png"),
  ];

  // food list
  final List<Food> _food = [
    Food(
      name: "Herbal Pancake",
      imagePath: "assets/images/herable_pancake.jpg",
      price: 7,
      decription:
          "Qui dolor non mollit Lorem do. Non qui non ullamco ullamco. Eiusmod nulla fugiat esse nisi non est adipisicing laboris commodo. Id sunt nisi irure velit amet excepteur laboris elit amet. Id laborum aliqua labore deserunt reprehenderit pariatur.",
      ingridients: [
        "Strowberry",
        "Cream",
      ],
    ),
    Food(
      name: "Fruit Salad",
      imagePath: "assets/images/fruit_salad.jpg",
      price: 5,
      decription:
          "Qui dolor non mollit Lorem do. Non qui non ullamco ullamco. Eiusmod nulla fugiat esse nisi non est adipisicing laboris commodo. Id sunt nisi irure velit amet excepteur laboris elit amet. Id laborum aliqua labore deserunt reprehenderit pariatur.",
      ingridients: [
        "Strowberry",
        "Cream",
      ],
    ),
    Food(
      name: "Green Noddle",
      imagePath: "assets/images/green_noddle.jpg",
      price: 15,
      decription:
          "Qui dolor non mollit Lorem do. Non qui non ullamco ullamco. Eiusmod nulla fugiat esse nisi non est adipisicing laboris commodo. Id sunt nisi irure velit amet excepteur laboris elit amet. Id laborum aliqua labore deserunt reprehenderit pariatur.",
      ingridients: [
        "Strowberry",
        "Cream",
      ],
    ),
    Food(
      name: "Herbal Pancake",
      imagePath: "assets/images/herable_pancake.jpg",
      price: 7,
      decription:
          "Qui dolor non mollit Lorem do. Non qui non ullamco ullamco. Eiusmod nulla fugiat esse nisi non est adipisicing laboris commodo. Id sunt nisi irure velit amet excepteur laboris elit amet. Id laborum aliqua labore deserunt reprehenderit pariatur.",
      ingridients: [
        "Strowberry",
        "Cream",
      ],
    ),
    Food(
      name: "Fruit Salad",
      imagePath: "assets/images/fruit_salad.jpg",
      price: 5,
      decription:
          "Qui dolor non mollit Lorem do. Non qui non ullamco ullamco. Eiusmod nulla fugiat esse nisi non est adipisicing laboris commodo. Id sunt nisi irure velit amet excepteur laboris elit amet. Id laborum aliqua labore deserunt reprehenderit pariatur.",
      ingridients: [
        "Strowberry",
        "Cream",
      ],
    ),
    Food(
      name: "Green Noddle",
      imagePath: "assets/images/green_noddle.jpg",
      price: 15,
      decription:
          "Qui dolor non mollit Lorem do. Non qui non ullamco ullamco. Eiusmod nulla fugiat esse nisi non est adipisicing laboris commodo. Id sunt nisi irure velit amet excepteur laboris elit amet. Id laborum aliqua labore deserunt reprehenderit pariatur.",
      ingridients: [
        "Strowberry",
        "Cream",
      ],
    ),
  ];

  // found food list
  List<Food> _foundFood = [];

  // cart list
  final List<CartItem> _cart = [];

  // history list
  final List<CartItem> _history = [];

  // add to cart
  void addToCart(Food food) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      return isSameFood;
    });

    if (cartItem != null) {
      cartItem.quntity++;
    } else {
      _cart.add(
        CartItem(food: food),
      );
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      _cart[cartIndex].quntity--;
      if (_cart[cartIndex].quntity == 0) {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0;
    for (CartItem cartItem in _cart) {
      total += cartItem.food.price * cartItem.quntity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotallItemCount() {
    int totalImetCount = 0;
    for (CartItem cartItem in _cart) {
      totalImetCount += cartItem.quntity;
    }
    return totalImetCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // GETTERS
  List<Food> get food => _food;
  List<Food> get foundFood => _foundFood;
  List<FoodBanner> get banners => _banners;
  List<CartItem> get cart => _cart;

  // SETTERS
  set foundFood(List<Food> value) {
    _foundFood = value;
  }
}
