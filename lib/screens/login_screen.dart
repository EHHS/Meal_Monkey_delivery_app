import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:meal_monkey/screens/reset_password_screen.dart';
import 'package:meal_monkey/screens/signup_screen.dart';
import 'package:meal_monkey/widgets/login_button.dart';
import 'package:meal_monkey/widgets/login_textfield.dart';
import 'package:meal_monkey/widgets/social_login_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: deviceSize.height * 0.08,
              ),
              Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Add your details to login",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              TextFieldLogin(
                function: (v) {},
                hint: "Your Email",
              ),
              TextFieldLogin(
                function: (v) {},
                hint: "Password",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: LoginButton(
                  function: () {},
                  label: "Login",
                ),
              ),
              GestureDetector(onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResetPasswordScreen()));
              } ,
                  child: Text("Forget Your Password ?")),
              SizedBox(
                height: deviceSize.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  "or Login With",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                height: deviceSize.height * 0.08,
                width: deviceSize.width * 0.8,
                child: SignInButton(Buttons.Facebook,
                    text: "Login with Facebook",
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
              SizedBox(
                height: deviceSize.height * 0.03,
              ),
              Container(
                height: deviceSize.height * 0.08,
                width: deviceSize.width * 0.8,
                child: SignInButton(Buttons.Google,
                    text: "Login with Gmail",
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
              SizedBox(
                height: deviceSize.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: TextStyle(fontSize: 18),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        " Sign Up",
                        style:
                            TextStyle(fontSize: 18, color: Colors.deepOrange),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
