import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyIngredientsTile extends StatelessWidget {
  final String foodIngredient;
  const MyIngredientsTile({super.key, required this.foodIngredient});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30.0,
        right: 30.0,
      ),
      child: Row(
        children: [
          Text(
            '•',
            style: GoogleFonts.yeonSung(fontSize: 14),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(foodIngredient, style: GoogleFonts.lato(fontSize: 14, height: 2))
        ],
      ),
    );
  }
}
