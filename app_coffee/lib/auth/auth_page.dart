import 'package:app_coffee/dangky.dart';
import 'package:app_coffee/login_page.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class auth_page extends StatefulWidget {
  const auth_page({Key? key}) : super(key: key);

  @override
  State<auth_page> createState() => _auth_pageState();
}

class _auth_pageState extends State<auth_page> {
  bool showLoginPage = true;
  void tonggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showRegisterPage: tonggleScreens);
    } else {
      return dangky(showLoginPage: tonggleScreens);
    }
  }
}
