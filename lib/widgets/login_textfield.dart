import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  final String? hint;
  final Function(String)? function;
  final TextEditingController? controller;

  TextFieldLogin({this.hint, this.function, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: TextField(
          onChanged: function,
          controller: controller,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              filled: true,
              fillColor: Colors.grey[200],
              hintText: hint,
              hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ))),
        ),
      ),
    );
  }
}