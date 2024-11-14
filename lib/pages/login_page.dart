import 'package:del_app_green/components/my_icon_button.dart';
import 'package:del_app_green/components/my_intro_button.dart';
import 'package:del_app_green/components/my_login_textfield.dart';
import 'package:del_app_green/pages/main_screen.dart';
import 'package:del_app_green/pages/register_page.dart';
import 'package:del_app_green/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailOrPhoneTextController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 85,
            ),
            Center(
              child: SvgPicture.asset(
                "assets/images/logo_login_page.svg",
                height: 100,
              ),
            ),
            Text(
              "Waves Of Food",
              style: GoogleFonts.yeonSung(color: Colors.black, fontSize: 40),
            ),
            Text(
              "Deliver Favorite Food",
              style: GoogleFonts.lato(fontSize: 14, color: mainColorText),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Login To Your  Account",
              style: GoogleFonts.lato(
                  fontSize: 20,
                  color: mainColorText,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            MyLoginTextField(
              hintText: 'Email of Phone Number',
              textEditingController: emailOrPhoneTextController,
              obscureText: false,
            ),
            const SizedBox(
              height: 15,
            ),
            MyLoginTextField(
              hintText: 'Password',
              textEditingController: passwordController,
              obscureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Or",
              style: GoogleFonts.yeonSung(
                  fontSize: 14, color: const Color.fromRGBO(9, 5, 28, 1)),
            ),
            Text(
              "Continue With",
              style: GoogleFonts.yeonSung(
                fontSize: 20,
                color: const Color.fromRGBO(9, 5, 28, 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyIconButton(
                  imagePath: "assets/images/communication.png",
                  text: 'Facebook',
                  onTap: () {},
                ),
                const SizedBox(
                  width: 20,
                ),
                MyIconButton(
                  imagePath: "assets/images/google.png",
                  text: 'Google',
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            MyIntroButton(
              text: 'Login',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainScreen(),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterPage(),
                ),
              ),
              child: GradientText(
                "Don’t Have Account?",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
                colors: const [
                  Color.fromRGBO(83, 232, 139, 1),
                  Color.fromRGBO(21, 190, 119, 1),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GradientText(
              textAlign: TextAlign.center,
              "Made by\nN3H",
              style: GoogleFonts.yeonSung(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
              colors: const [
                Color.fromRGBO(83, 232, 139, 1),
                Color.fromRGBO(21, 190, 119, 1),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
