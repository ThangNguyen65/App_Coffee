import 'dart:ui';

import 'package:app_coffee/BottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class dangky extends StatefulWidget {
  const dangky({Key? key});

  @override
  State<dangky> createState() => _dangkyState();
}

class _dangkyState extends State<dangky> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFD1A78F),
              Color(0xFFA6654E),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: w * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Chào mừng bạn đến với",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFA6654E)),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "THE COFFEE HOUSE",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFA6654E)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 0),
                          child: IntlPhoneField(
                            decoration: InputDecoration(
                              hintText: 'Số điện thoại',
                              border: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            initialCountryCode: 'VN',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Tên đăng nhập',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 16),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Họ',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: _isChecked1,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked1 = value!;
                              });
                            },
                          ),
                          const Text('Đồng ý với các điều khoản '),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: _isChecked2,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked2 = value!;
                              });
                            },
                          ),
                          const Text('Đồng ý nhận thông báo từ chúng tôi'),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          margin:
                          EdgeInsets.only(top: 100);
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const BottomNavBars(),
                              ),
                              (route) => false);
                        },
                        child: const Text('Login'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
