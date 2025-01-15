import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar myAppBar = AppBar(
  actions: [
    IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.notifications_active_outlined,
        size: 30,
        color: Color.fromRGBO(108, 203, 146, 1),
      ),
    ),
  ],
  automaticallyImplyLeading: false,
  backgroundColor: Colors.transparent,
  centerTitle: true,
  title: Text(
    "Explore Your Favorite Food",
    style: GoogleFonts.yeonSung(
      fontSize: 26,
    ),
  ),
);
