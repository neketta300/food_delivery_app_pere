import 'package:del_app_green/components/my_icon_button.dart';
import 'package:del_app_green/components/my_intro_button.dart';
import 'package:del_app_green/components/my_login_textfield.dart';
import 'package:del_app_green/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailOrPhoneTextController = TextEditingController();
  TextEditingController nameController = TextEditingController();
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
              style: GoogleFonts.lato(
                  fontSize: 14,
                  color: mainColorText,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Sign Up Here",
              style: GoogleFonts.lato(
                  fontSize: 20,
                  color: mainColorText,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            MyLoginTextField(
              hintText: 'Name',
              textEditingController: nameController,
              obscureText: false,
            ),
            const SizedBox(
              height: 15,
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
              height: 10,
            ),
            Text(
              "Or",
              style: GoogleFonts.yeonSung(
                  fontSize: 14, color: const Color.fromRGBO(9, 5, 28, 1)),
            ),
            Text(
              "Sign Up With",
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
              text: 'Create account',
              onTap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: GradientText(
                "Already Have An Account?",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                ),
                colors: myTextGradient,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
