import 'package:del_app_green/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPrimaryButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const MyPrimaryButton({
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
          gradient: myGradient,
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.lato(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
