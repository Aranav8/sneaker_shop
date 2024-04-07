import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'images/nike.png',
                  height: 240.0,
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              Text(
                'Just Do It',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Text(
                'Brand new scneaker and custom kicks made with premium quality',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 48.0,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(
                      child: Text(
                        'Show Now',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
