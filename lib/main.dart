import 'package:del_app_green/pages/intro_page.dart';
import 'package:del_app_green/pages/login_page.dart';
import 'package:del_app_green/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          selectedLabelStyle:
              GoogleFonts.lato(color: Colors.black, fontSize: 12),
          selectedIconTheme: const IconThemeData(color: Colors.black),
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: mainColorText,
          selectionColor: Colors.grey[600],
          selectionHandleColor: mainColorText,
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(247, 247, 253, 1),
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
