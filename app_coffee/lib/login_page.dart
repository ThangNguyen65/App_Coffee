import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'dangky.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  bool _showOtpField = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/login1.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            width: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Chào mừng bạn đến với",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "THE COFFE HOUSE",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    ),
                  ),
                ),
                if (_showOtpField)
                  SizedBox(
                    width: 200,
                    child: OTPTextField(
                      length: 6,
                      width: MediaQuery.of(context).size.width,
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldWidth: 30,
                      fieldStyle: FieldStyle.underline,
                      obscureText: false,
                      onChanged: (otp) {
                        print('OTP Changed: $otp');
                      },
                      onCompleted: (otp) {
                        print('OTP Completed: $otp');
                      },
                    ),
                  ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const dangky(),
                        ),
                        (route) => false);
                  },
                  child: const Text('Login'),
                ),
                Text("--------------------- Hoặc------------------------"),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Thêm xử lý submit ở đây
                  },
                  child: Text('Submit'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Thêm xử lý submit ở đây
                  },
                  child: Text('Submit'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Thêm xử lý submit ở đây
                  },
                  child: Text('Tiếp tục bằng Google'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
