import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(OhmifyApp());
}

class OhmifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resistor Calculator',
        theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF1e1e2c), // Global background color
    textTheme: TextTheme(
    bodyLarge: TextStyle(color: Color(0xFFffde59)), // Global text color
    bodyMedium: TextStyle(color: Color(0xFFffde59)), // Optional for other texts
    ),
        ),
      home: HomeScreen(),
    );
  }
}
