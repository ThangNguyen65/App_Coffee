import 'package:app_coffee/SearchPage.dart';
import 'package:app_coffee/Home.dart';
import 'package:app_coffee/slider_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: const Bai1(),
    );
  }
}
