import 'package:app_coffee/BottomNavBar.dart';
import 'editProfile.dart';

import 'package:app_coffee/login_page.dart';

import 'package:app_coffee/auth/auth_page.dart';
import 'package:app_coffee/dangky.dart';
import 'package:app_coffee/login_page.dart';
import 'package:app_coffee/auth/main_page.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: const main_pages(),
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      
    );
  }
}