import 'package:del_app_green/components/my_app_bar.dart';
import 'package:del_app_green/components/my_banner_tile.dart';
import 'package:del_app_green/components/my_food_tile.dart';
import 'package:del_app_green/models/shop.dart';
import 'package:del_app_green/pages/about_food_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final banners = shop.banners;
    final foodMenu = shop.food;
    return Scaffold(
      appBar: myAppBar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 180, // высота блока всей колонки и скрола
            child: Row(
              // обязательно
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, // ставим горизонтальный
                    itemCount: banners.length, // количество элементов в листе
                    controller: ScrollController(
                        initialScrollOffset:
                            220.0), // добавляем смещение чтобы начинало показывать лист не с первого элемента
                    itemBuilder: (context, int index) => MyBannerTile(
                      banner: banners[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(
              "Popular",
              style: GoogleFonts.yeonSung(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: foodMenu.length,
              itemBuilder: (context, int index) => MyFoodTile(
                food: foodMenu[index],
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutFoodPage(
                      food: foodMenu[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
