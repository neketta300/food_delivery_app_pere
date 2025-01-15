import 'package:del_app_green/components/my_app_bar.dart';
import 'package:del_app_green/components/my_cart_tile.dart';
import 'package:del_app_green/components/my_secondaty_button.dart';
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
    return Consumer<Shop>(
      builder: (context, shop, child) {
        //cart
        final userCart = shop.cart;

        // scafold ui
        return Scaffold(
          appBar: myAppBar,
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
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
                      height: 10,
                    ),
                    userCart.isEmpty
                        ? Expanded(
                            child: Center(
                              child: Text(
                                "Cart is empty...",
                                style: GoogleFonts.yeonSung(
                                    fontSize: 18,
                                    color:
                                        const Color.fromARGB(204, 68, 68, 68)),
                              ),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, int index) =>
                                  MyCartTile(cartItem: userCart[index]),
                            ),
                          ),
                    if (userCart.isNotEmpty)
                      // checkout button
                      MySecondatyButton(
                        onTap: () {},
                        text: "Go to Checkout",
                      ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
