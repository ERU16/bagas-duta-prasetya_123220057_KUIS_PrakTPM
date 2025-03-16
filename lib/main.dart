import 'package:flutter/material.dart';
import 'login_page.dart'; // Import the LoginPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(), // Set LoginPage as the home widget
    );
  }
}
