import 'package:flutter/material.dart';
import 'package:nice_colors/core/color_generator.dart';
import 'package:nice_colors/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(colorGenerator: ColorGenerator()),
    );
  }
}
