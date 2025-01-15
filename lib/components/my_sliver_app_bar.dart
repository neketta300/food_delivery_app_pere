import 'package:del_app_green/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final double screenHeight;
  const MySliverAppBar(
      {super.key, required this.child, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: mainBackgroundAppColor,
      expandedHeight: screenHeight / 5,
      collapsedHeight: screenHeight / 5,
      pinned: true,
      automaticallyImplyLeading: false,
      centerTitle: true,
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
      title: Text(
        "Profile",
        style: GoogleFonts.yeonSung(
          fontSize: 26,
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: child,
      ),
    );
  }
}
