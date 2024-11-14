import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLoginTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController textEditingController;
  const MyLoginTextField({
    super.key,
    required this.hintText,
    required this.textEditingController,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        obscureText: obscureText,
        controller: textEditingController,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromRGBO(255, 255, 255, 1),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          hintText: hintText,
          hintStyle: GoogleFonts.lato(
            color: const Color.fromRGBO(59, 59, 59, 0.5),
            fontSize: 15,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 244, 244, 244),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 244, 244, 244)),
          ),
        ),
      ),
    );
  }
}
