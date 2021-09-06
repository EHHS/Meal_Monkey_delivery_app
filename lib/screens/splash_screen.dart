import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Container(
            color: Colors.white,
          ),
          Image.asset('assets/images/Background icons.png'),
          Image.asset('assets/images/Logo.png')
        ],
      ),
    );
  }
}
