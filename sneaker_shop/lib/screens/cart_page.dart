import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/cart.dart';

import '../compnents/cart_item.dart';
import '../models/shoe.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'My Card',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                Shoe individualShoe = value.getUserCart()[index];
                return CartItem(
                  shoe: individualShoe,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
