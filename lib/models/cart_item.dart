import 'package:del_app_green/models/food.dart';

class CartItem {
  Food food;
  int quntity;

  CartItem({required this.food, this.quntity = 1});

  double get totalPrice => food.price * quntity;
}
