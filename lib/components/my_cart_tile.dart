import 'package:del_app_green/components/my_quantity_selector.dart';
import 'package:del_app_green/models/cart_item.dart';
import 'package:del_app_green/models/shop.dart';
import 'package:del_app_green/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                cartItem.food.imagePath,
                fit: BoxFit.cover,
                height: 74,
                width: 74,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartItem.food.name,
                  style: GoogleFonts.yeonSung(fontSize: 18),
                ),
                GradientText(
                  colors: myTextGradient,
                  "\$" + cartItem.food.price.toString(),
                  style: GoogleFonts.lato(
                      fontSize: 22, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            const Spacer(),
            MyQuantitySelector(
                food: cartItem.food,
                quantity: cartItem.quntity,
                onIncrement: () {
                  shop.addToCart(cartItem.food);
                },
                onDecrement: () {
                  if (cartItem.quntity >= 1) {
                    shop.removeFromCart(cartItem);
                  } else if (cartItem.quntity == 1) {}
                }),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
