import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/login_screen.dart';
import 'package:meal_monkey/widgets/login_button.dart';
import 'package:meal_monkey/widgets/login_textfield.dart';


class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize =MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Add your details to login",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                TextFieldLogin(
                  function: (v) {},
                  hint: "Name",
                ),
                TextFieldLogin(
                  function: (v) {},
                  hint: "Email",
                ),
                TextFieldLogin(
                  function: (v) {},
                  hint: ".no",
                ),
                TextFieldLogin(
                  function: (v) {},
                  hint: "Address",
                ),
                TextFieldLogin(
                  function: (v) {},
                  hint: "Password",
                ),
                TextFieldLogin(
                  function: (v) {},
                  hint: "Confirm Password",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: LoginButton(
                    function: () {},
                    label: "Sign Up",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ?",
                        style: TextStyle(fontSize: 18),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 18, color: Colors.deepOrange),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}