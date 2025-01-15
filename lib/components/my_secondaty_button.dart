import 'package:del_app_green/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MySecondatyButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const MySecondatyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 20,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Center(
          child: GradientText(
            text,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
            ),
            colors: myTextGradient,
          ),
        ),
      ),
    );
  }
}
