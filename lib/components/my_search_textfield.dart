import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySearchTextfield extends StatelessWidget {
  final void Function(String) onChanged;
  final TextEditingController textEditingController;

  const MySearchTextfield({
    super.key,
    required this.textEditingController,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        onChanged: (value) => onChanged(value),
        controller: textEditingController,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Image.asset(
              "assets/images/icon_search.png",
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          filled: true,
          fillColor: const Color.fromARGB(28, 89, 196, 119),
          hintText: "What do you want to order?",
          hintStyle: GoogleFonts.lato(
            fontSize: 12,
            color: const Color.fromRGBO(59, 59, 59, 0.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
