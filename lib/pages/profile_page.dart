import 'dart:ffi';

import 'package:del_app_green/auth/auth_service.dart';
import 'package:del_app_green/components/my_settings.dart';
import 'package:del_app_green/components/my_sliver_app_bar.dart';
import 'package:del_app_green/themes/colors.dart';

import 'package:flutter/material.dart';

class menuItem {
  String name;
  Icon icon;

  menuItem(this.icon, this.name);
}

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final authService = AuthService();

  void signOut() async {
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            screenHeight: screenHeight,
            child: MySettings(
              screenHeight: screenHeight,
              onTap: () {},
            ),
          ),
        ],
        body: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              color: mainBackgroundAppColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.list,
                  color: Colors.black,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
