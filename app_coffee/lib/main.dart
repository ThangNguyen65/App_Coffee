import 'package:app_coffee/BottomNavBar.dart';
import 'package:app_coffee/DescribeProduct.dart';

import 'package:app_coffee/login_page.dart';
import 'package:app_coffee/text.dart';

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
      home: const DescribeProduct(),
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
    );
  }
}
