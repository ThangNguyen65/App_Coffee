import 'package:app_coffee/BottomNavBar.dart';
import 'package:app_coffee/auth/auth_page.dart';
import 'package:app_coffee/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class main_pages extends StatelessWidget {
  const main_pages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return BottomNavBars();
            } else {
              return auth_page();
            }
          }),
    );
  }
}
