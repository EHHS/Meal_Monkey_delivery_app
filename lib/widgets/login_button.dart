import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String label;
  final Function()? function;

  LoginButton({this.label = '', this.function});

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return SizedBox(
      height: deviceSize.height*0.08,
      width: deviceSize.width*0.8,
      child: TextButton(
        onPressed: function,
        child: Text(
          label,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        style: TextButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}