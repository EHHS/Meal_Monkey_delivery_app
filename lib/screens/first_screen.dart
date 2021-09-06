import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/signup_screen.dart';
import 'package:meal_monkey/widgets/login_button.dart';

import 'login_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize =MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: deviceSize.height*0.45,
                width: deviceSize.width,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      "assets/images/orange shape.jpeg",
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 0,
                      right: deviceSize.width / 2.7,
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          "assets/images/Monkey face.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Meal",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      " Monkey",
                      style: TextStyle(fontSize: 30, color: Colors.deepOrange),
                    )
                  ],
                ),
              ),
              Text(
                "Food Delivery",
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  "Discover the Best Foods from over 1,000 restaurants and fast delivery to your                           doorstep",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              LoginButton(
                label: "Login",
                function: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: SizedBox(
                  height: deviceSize.height*0.08,
                  width: deviceSize.width*0.8,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUpScreen()));
                    },
                    child: Container(
                      height: deviceSize.height*0.08,
                      width: deviceSize.width*0.8,
                      child: Center(
                        child: Text(
                          "Create an Account",
                          style: TextStyle(fontSize: 18, color: Colors.deepOrange),
                        ),
                      ),
                    ),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.deepOrange),
                            borderRadius: BorderRadius.circular(25))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}