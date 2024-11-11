import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Explore Your Favorite Food",
                style: GoogleFonts.yeonSung(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                width: 35,
              ),
              const Icon(
                Icons.notifications_active_outlined,
                size: 25,
                color: Color.fromRGBO(108, 203, 146, 1),
              )
            ],
          )
        ],
      ),
    );
  }
}
