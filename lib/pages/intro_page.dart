import 'package:del_app_green/auth/auth_gate.dart';
import 'package:del_app_green/components/my_intro_button.dart';
import 'package:del_app_green/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: SvgPicture.asset(
                "assets/images/intro_page.svg",
                height: 312,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Enjoy Restaurant Quality Meals\nat Home",
              textAlign: TextAlign.center,
              style: GoogleFonts.yeonSung(color: mainColorText, fontSize: 20),
            ),
            const SizedBox(
              height: 220,
            ),
            MyIntroButton(
              text: "Next",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AuthGate(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Made by N3H",
              style: GoogleFonts.yeonSung(color: mainColorText, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
