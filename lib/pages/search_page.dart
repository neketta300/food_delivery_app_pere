import 'package:del_app_green/components/my_app_bar.dart';
import 'package:del_app_green/components/my_food_tile.dart';
import 'package:del_app_green/components/my_search_textfield.dart';
import 'package:del_app_green/models/food.dart';
import 'package:del_app_green/models/shop.dart';
import 'package:del_app_green/pages/about_food_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    final shop = context.read<Shop>();
    shop.foundFood = shop.food;
    super.initState();
  }

  void _runFilter(String foodName) {
    final shop = context.read<Shop>();
    List<Food> serchResult = [];
    if (foodName.isEmpty) {
      serchResult = shop.food;
    } else {
      serchResult = shop.food
          .where((food) =>
              food.name.toLowerCase().contains(foodName.toLowerCase()))
          .toList();
    }
    setState(() {
      shop.foundFood = serchResult;
    });
  }

  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final foundFood = shop.foundFood;
    return Scaffold(
      appBar: myAppBar,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          MySearchTextfield(
            textEditingController: textEditingController,
            onChanged: (text) {
              _runFilter(text);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Menu",
            style: GoogleFonts.yeonSung(fontSize: 28),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: foundFood.length,
              itemBuilder: (context, index) => MyFoodTile(
                food: foundFood[index],
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutFoodPage(
                      food: foundFood[index],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
