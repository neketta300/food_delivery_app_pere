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
      price: "7",
      decription: "Very well pankace",
    ),
    Food(
      name: "Fruit Salad",
      imagePath: "assets/images/fruit_salad.jpg",
      price: "5",
      decription: "Very well Fruit Salad",
    ),
    Food(
      name: "Green Noddle",
      imagePath: "assets/images/green_noddle.jpg",
      price: "15",
      decription: "Very well pankace",
    ),
    Food(
      name: "Herbal Pancake",
      imagePath: "assets/images/herable_pancake.jpg",
      price: "7",
      decription: "Very well pankace",
    ),
  ];

  // GETTERS
  List<Food> get food => _food;
  List<FoodBanner> get banners => _banners;
}
