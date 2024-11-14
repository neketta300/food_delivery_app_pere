import 'package:del_app_green/components/my_cart_tile.dart';
import 'package:del_app_green/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final cart = shop.cart;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Explore Your Favorite Food",
                  style: GoogleFonts.yeonSung(
                    fontSize: 26,
                  ),
                ),
                const Icon(
                  Icons.notifications_active_outlined,
                  size: 30,
                  color: Color.fromRGBO(108, 203, 146, 1),
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              "Cart",
              style: GoogleFonts.yeonSung(
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Consumer<Shop>(
            builder: (contex, shop, child) => Expanded(
              child: ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, int index) =>
                    MyCartTile(cartItem: cart[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
