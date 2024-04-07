import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/screens/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        home: IntroPage(),
      ),
    );
  }
}
