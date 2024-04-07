import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/cart.dart';

import '../models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8.0)),
        margin: EdgeInsets.only(bottom: 10.0),
        child: ListTile(
          leading: Image.asset(widget.shoe.imagePath),
          title: Text(widget.shoe.name),
          subtitle: Text(widget.shoe.price),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: removeItemFromCart,
          ),
        ),
      ),
    );
  }
}
