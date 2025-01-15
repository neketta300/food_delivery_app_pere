import 'package:del_app_green/models/profile.dart';
import 'package:del_app_green/models/shop.dart';
import 'package:del_app_green/pages/intro_page.dart';

import 'package:del_app_green/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  // supabase setyup
  await Supabase.initialize(
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind0ZXRqdWdsbWF5bXZhc29iZmhoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE2MDc2MTYsImV4cCI6MjA0NzE4MzYxNn0.AB3ZRP3EssLWaQeCcwHy8k0_zhV2lIqRc2YsySDhxnM",
    url: "https://wtetjuglmaymvasobfhh.supabase.co",
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Shop()),
        ChangeNotifierProvider(create: (context) => Profile()),
        // Другие провайдеры, если есть
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
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
        scaffoldBackgroundColor: mainBackgroundAppColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
    );
  }
}
