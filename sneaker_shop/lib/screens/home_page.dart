import 'package:flutter/material.dart';
import 'package:sneaker_shop/compnents/bottom_nav_bar.dart';
import 'package:sneaker_shop/screens/shop_page.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChanged: (index) => navigationBottomBar(index),
      ),
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'images/nike.png',
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Info',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
