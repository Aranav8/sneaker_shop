import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChanged;
  BottomNavBar({required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey[700],
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          tabBorderRadius: 16.0,
          mainAxisAlignment: MainAxisAlignment.center,
          onTabChange: (value) => onTabChanged!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
