import 'package:app_coffee/BottomNavBar.dart';
<<<<<<< HEAD
import 'package:app_coffee/DescribeProduct.dart';

import 'package:app_coffee/login_page.dart';
import 'package:app_coffee/text.dart';
=======
import 'package:app_coffee/auth/auth_page.dart';
import 'package:app_coffee/dangky.dart';
import 'package:app_coffee/login_page.dart';
import 'package:app_coffee/auth/main_page.dart';
>>>>>>> c7d785be837289cf4ebdf74b8655ad95767fbb7a

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
<<<<<<< HEAD
      home: const DescribeProduct(),
=======
      home: const main_pages(),
>>>>>>> c7d785be837289cf4ebdf74b8655ad95767fbb7a
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
    );
  }
}
