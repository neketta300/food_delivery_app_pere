import 'package:del_app_green/components/my_ingredients_tile.dart';
import 'package:del_app_green/components/my_primary_button.dart';

import 'package:del_app_green/models/food.dart';
import 'package:del_app_green/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboutFoodPage extends StatefulWidget {
  final Food food;
  const AboutFoodPage({
    super.key,
    required this.food,
  });

  @override
  State<AboutFoodPage> createState() => _AboutFoodPageState();
}

class _AboutFoodPageState extends State<AboutFoodPage> {
  // add to cart
  void addToCart(Food food) {
    Navigator.pop(context);
    context.read<Shop>().addToCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          widget.food.name,
          style: GoogleFonts.yeonSung(fontSize: 24),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                widget.food.imagePath,
                fit: BoxFit.cover,
                height: 200,
                width: 300,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "Short Description",
              style: GoogleFonts.yeonSung(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              textAlign: TextAlign.justify,
              widget.food.decription,
              style: GoogleFonts.lato(fontSize: 14, height: 2),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "Ingredients",
              style: GoogleFonts.yeonSung(fontSize: 20),
            ),
          ),
          ListView.builder(
            shrinkWrap: true, // занимает минимальное место которое ему нужно
            physics: const NeverScrollableScrollPhysics(), // отключаю прокрутку
            padding: EdgeInsets.zero,
            itemCount: widget.food.ingridients.length,
            itemBuilder: (context, index) => MyIngredientsTile(
              foodIngredient: widget.food.ingridients[index],
            ),
          ),
          const Spacer(),
          MyPrimaryButton(
            text: 'Add to Cart',
            onTap: () => addToCart(widget.food),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
