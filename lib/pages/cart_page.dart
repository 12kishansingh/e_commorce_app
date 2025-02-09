import 'package:e_commorce_app/components/cart_items.dart';
import 'package:e_commorce_app/models/cart.dart';
import 'package:e_commorce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                // headin
                Text(
                  'My Cart',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.getusercart().length,
                    itemBuilder: (context, index) {
                      // get individula shoe
                      Shoe individualshoe = value.getusercart()[index];

                      // return the cart item
                      return CartItem(
                        shoe: individualshoe,
                      );
                    },
                  ),
                ),
              ],
            ));
  }
}
