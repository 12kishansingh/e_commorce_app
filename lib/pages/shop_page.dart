import 'package:e_commorce_app/components/shoe_tile.dart';
import 'package:e_commorce_app/models/cart.dart';
import 'package:e_commorce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
// add shoe to cart

  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).additemtocart(shoe);

    // alert the user, that shoe is successfully added
    showDialog(
      context: context,
      builder:(context)=>AlertDialog(
        title: Text('Successfully added!'),
        content: Text('Check your cartd'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          // search bar
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search'),
                Icon(Icons.search),
              ],
            ),
          ),

          // message

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Shop at least prices.',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),

          //hot picks

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot Items🔥',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // get a shoe from the shoelsit
                Shoe shoe = value.getShoeList()[index];
                return ShoeTile(
                  onTap: () => addShoeToCart(shoe),
                  shoe: shoe,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25.0,
              left: 25,
              right: 25,
            ),
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
