import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyIconButton extends StatelessWidget {
  final String imagePath;
  final String text;
  final Function()? onTap;
  const MyIconButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 150,
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromRGBO(244, 244, 244, 1)),
              color: const Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Image.asset(
                  imagePath,
                  height: 25,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  text,
                  style: GoogleFonts.lato(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
