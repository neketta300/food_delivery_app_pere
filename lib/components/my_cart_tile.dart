import 'package:del_app_green/models/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MyCartTile extends StatelessWidget {
  final CartItem item;
  const MyCartTile({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
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
                item.food.imagePath,
                fit: BoxFit.cover,
                height: 74,
                width: 74,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              item.food.name,
              style: GoogleFonts.yeonSung(fontSize: 18),
            ),
            const Spacer(),
            GradientText(
              colors: const [
                Color.fromRGBO(83, 232, 139, 1),
                Color.fromRGBO(21, 190, 119, 1),
              ],
              "\$" + item.food.price.toString(),
              style:
                  GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
