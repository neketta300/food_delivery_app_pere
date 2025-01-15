import 'package:del_app_green/models/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MySettings extends StatelessWidget {
  final void Function()? onTap;
  final double screenHeight;
  const MySettings(
      {super.key, required this.screenHeight, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Consumer<Profile>(
            builder: (context, profile, child) => Padding(
              padding: const EdgeInsets.only(left: 20),
              child: GestureDetector(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(199, 83, 232, 140),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      width: 60,
                      height: 60,
                      child: Text(
                        profile.name.substring(0, 1),
                        style: GoogleFonts.yeonSung(fontSize: 24),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          profile.name,
                          style: GoogleFonts.yeonSung(fontSize: 22),
                        ),
                        Row(
                          children: [
                            Text(
                              "Настройки",
                              style: GoogleFonts.lato(
                                color: const Color.fromARGB(255, 105, 105, 105),
                              ),
                            ),
                            const Icon(
                              Icons.navigate_next_outlined,
                              size: 20,
                              color: Color.fromARGB(255, 105, 105, 105),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight / 4 / 5.5,
          )
        ],
      ),
    );
  }
}
