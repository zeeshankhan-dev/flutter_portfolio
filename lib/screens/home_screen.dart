import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.indigo.shade50, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.flutter_dash, size: 60, color: Colors.indigo),
                  SizedBox(height: 16),
                  Text(
                    'Welcome!',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.indigo),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "I'm Zeeshan Khan,\na Flutter Developer Intern.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
