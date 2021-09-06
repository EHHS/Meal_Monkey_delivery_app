import 'package:flutter/material.dart';
import 'package:meal_monkey/widgets/login_button.dart';
import 'package:meal_monkey/widgets/login_textfield.dart';

import 'otp_screen.dart';


class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Reset Password",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 300,
              height: 80,
              child: Text(
                "please enter your email to receive a link to create a new password via email",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
            TextFieldLogin(
              function: (value) {},
              hint: "your email",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: LoginButton(
                function: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtpScreen()));
                },
                label: "Send",
              ),
            )
          ],
        ),
      ),
    );
  }
}