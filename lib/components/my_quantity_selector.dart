import 'package:del_app_green/models/food.dart';
import 'package:del_app_green/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyQuantitySelector extends StatelessWidget {
  final Food food;
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const MyQuantitySelector({
    super.key,
    required this.food,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // decrement
        GestureDetector(
          onTap: onDecrement,
          child: Container(
            width: 26,
            height: 26,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), gradient: myGradient),
            child: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
        ),

        // quantity
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: SizedBox(
            width: 20,
            child: Center(
              child: Text(
                quantity.toString(),
                style: GoogleFonts.lato(),
              ),
            ),
          ),
        ),
        // increment
        GestureDetector(
          onTap: onIncrement,
          child: Container(
            width: 26,
            height: 26,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), gradient: myGradient),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
