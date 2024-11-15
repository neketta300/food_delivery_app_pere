import 'package:del_app_green/models/food_banner.dart';
import 'package:flutter/material.dart';

class MyBannerTile extends StatelessWidget {
  final FoodBanner banner;

  const MyBannerTile({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          banner.imagePath,
        ),
      ),
    );
  }
}
